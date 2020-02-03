//
//  NumbersLightListNumbersLightListPresenter.swift
//  NumbersLight
//
//  Created by Guillaume on 27/01/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

import Foundation

import Alamofire

final class JapaneseNumeralListPresenter {
    
    // MARK: Dependency inversion variable 
    weak var view: JapaneseNumeralListViewProtocol?
    var router: JapaneseNumeralListRouterProtocol?
    var interactor: JapaneseNumeralListUseCaseProtocol?
    
    // MARK: Instance Variable
    var reachabilityStatus: NetworkReachabilityManager.NetworkReachabilityStatus?
    
    var japaneseNumerals: [JapaneseNumeral]?
    
    // MARK: Constructors
    init(
        interactor: JapaneseNumeralListUseCaseProtocol? = nil,
        router: JapaneseNumeralListRouterProtocol? = nil,
        view: JapaneseNumeralListViewProtocol? = nil
    ) {
        self.interactor = interactor
        self.router = router
        self.view = view
    }
    
    // MARK: Instance Methods
}

// MARK: NumbersLightListPresentationProtocol
extension JapaneseNumeralListPresenter: JapaneseNumeralListPresentationProtocol {
    
    func presentJapaneseNumeralList() {
        self.view?.isLoading = true
        self.interactor?.getJapaneseNumerals {
            (result: Swift.Result<[JapaneseNumeral], Error>) in
            self.view?.isLoading = false
            switch result {
            case .success(let japaneseNumerals):
                self.japaneseNumerals = japaneseNumerals
                self.view?.japaneseNumerals = japaneseNumerals
            case .failure(let error):
                self.view?.display(errorMessage: error.localizedDescription)
            }
        }
    }
    
    func presentDetail(japaneseNumeral: JapaneseNumeral) {
        guard let arabicRepresentation: String = japaneseNumeral.arabicRepresentation else {
            return
        }
        self.router?.pushDetailView(arabicRepresentation: arabicRepresentation)
    }
}

// MARK: NumbersLightListInteractorOutputProtocol
extension JapaneseNumeralListPresenter: JapaneseNumeralListInteractorOutputProtocol {
    func reachabilityDidChange(status: NetworkReachabilityManager.NetworkReachabilityStatus) {
        if status == .notReachable  && self.reachabilityStatus != nil {
            self.view?.display(errorMessage: "Network not reachable")
        } else if status == .reachable(.wwan) || status == .reachable(.ethernetOrWiFi) {
            self.presentJapaneseNumeralList()
        }
        self.reachabilityStatus = status
    }
}

// MARK: NumbersLightListViewEventResponderProtocol
extension JapaneseNumeralListPresenter: JapaneseNumeralListViewEventResponderProtocol {
    func didSelectRowat(index: IndexPath) {
        guard let japaneseNumerals: [JapaneseNumeral] = self.japaneseNumerals,
            let reachabilityStatus = self.reachabilityStatus,
            reachabilityStatus != .notReachable
        else {
            return
        }
        self.presentDetail(japaneseNumeral: japaneseNumerals[index.row])
    }
    
    func viewDidLoad() {
        guard let interactor = self.interactor else { return }
               if interactor.isNetworkReachable  {
                   self.presentJapaneseNumeralList()
               }
    }
    
    func viewDidAppear() {
       
    }
    
    func didRefreshTableView() {
        self.presentJapaneseNumeralList()
    }
}

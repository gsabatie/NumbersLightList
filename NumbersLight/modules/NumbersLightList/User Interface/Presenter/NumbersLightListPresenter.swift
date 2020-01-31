//
//  NumbersLightListNumbersLightListPresenter.swift
//  NumbersLight
//
//  Created by Guillaume on 27/01/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

import Foundation

import Alamofire

final class NumbersLightListPresenter {
    
    // MARK: Dependency inversion variable 
    weak var view: NumbersLightListViewProtocol?
    var router: NumbersLightListRouterProtocol?
    var interactor: NumbersLightListUseCaseProtocol?
    
    // MARK: Instance Variable
    var reachabilityStatus: NetworkReachabilityManager.NetworkReachabilityStatus?
    
    // MARK: Constructors
    init(
        interactor: NumbersLightListUseCaseProtocol? = nil,
        router: NumbersLightListRouterProtocol? = nil,
        view: NumbersLightListViewProtocol? = nil) {
        self.interactor = interactor
        self.router = router
        self.view = view
    }
    
    // MARK: Instance Methods
}

// MARK: NumbersLightListPresentationProtocol
extension NumbersLightListPresenter: NumbersLightListPresentationProtocol {
    func presentLighNumbers() {
        self.view?.isLoading = true
                   self.interactor?.getLightNumber{ (result: Swift.Result<[NumberLight], Error>) in
                                    self.view?.isLoading = false
                                    switch result {
                                    case .success( let lightNumbers):
                                        self.view?.numberLight = lightNumbers
                                    case .failure(let error):
                                      self.view?.display(errorMessage: error.localizedDescription)
                                    }
                                }
    }
}

// MARK: NumbersLightListInteractorOutputProtocol
extension NumbersLightListPresenter: NumbersLightListInteractorOutputProtocol {
    func reachabilityDidChange(status: NetworkReachabilityManager.NetworkReachabilityStatus) {
        if status == .notReachable  && self.reachabilityStatus != nil {
            self.view?.display(errorMessage: "Network not reachable")
        } else if status == .reachable(.wwan) ||  status == .reachable(.ethernetOrWiFi) {
            self.presentLighNumbers()
        }
        self.reachabilityStatus = status
    }
    
}

// MARK: NumbersLightListViewEventResponderProtocol
extension NumbersLightListPresenter: NumbersLightListViewEventResponderProtocol {
    func viewDidLoad() {
        
    }
    
    func viewDidAppear() {
        guard let interactor = self.interactor else { return }
        if interactor.isNetworkReachable  {
            self.presentLighNumbers()
        }
    }
    
    func didRefreshTableView() {
        self.presentLighNumbers()
    }
}

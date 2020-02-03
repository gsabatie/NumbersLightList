//
//  NumbersLightDetailNumbersLightDetailPresenter.swift
//  NumbersLight
//
//  Created by Guillaume on 01/02/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

import Foundation

final class JapaneseNumeralDetailPresenter {
    
    // MARK: Dependency inversion variable 
    weak var view: JapaneseNumeralDetailViewProtocol?
    var router: JapaneseNumeralDetailRouterProtocol?
    var interactor: JapaneseNumeralDetailUseCaseProtocol?
    
    // MARK: Instance Variable
    var kanjiArabicRepresentation: String?
    
    // MARK: Constructors
    init(interactor: JapaneseNumeralDetailUseCaseProtocol? = nil,
         router: JapaneseNumeralDetailRouterProtocol? = nil,
         view: JapaneseNumeralDetailViewProtocol? = nil)
    {
        self.interactor = interactor
        self.router = router
        self.view = view
    }
}

// MARK: NumbersLightDetailPresentationProtocol
extension JapaneseNumeralDetailPresenter: JapaneseNumeralDetailPresentationProtocol {
    func presentJapaneseNumeralDetail(arabicRepresentation: String) {
        self.kanjiArabicRepresentation = arabicRepresentation
        self.view?.isLoading = true
        self.interactor?.getJapaneseNumeral(arabicRepresentation: arabicRepresentation) {
            (result: Result<JapaneseNumeral, Error>) in
            DispatchQueue.main.async {
                self.view?.isLoading = false
                switch result {
                case .success(let japaneseNumeral):
                    self.view?.japaneseNumeral = japaneseNumeral
                case .failure(let error):
                    self.view?.display(errorMessage: error.localizedDescription)
                    return
                }
            }
        }
    }
}

// MARK: NumbersLightDetailInteractorOutputProtocol
extension JapaneseNumeralDetailPresenter: JapaneseNumeralDetailInteractorOutputProtocol {}

// MARK: NumbersLightDetailViewEventResponderProtocol
extension JapaneseNumeralDetailPresenter: JapaneseNumeralDetailViewEventResponderProtocol {
    func viewDidLoad() {}
    
    func viewDidAppear() {}
}

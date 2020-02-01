//
//  NumbersLightDetailNumbersLightDetailPresenter.swift
//  NumbersLight
//
//  Created by Guillaume on 01/02/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

import Foundation

final class NumbersLightDetailPresenter {

    // MARK: Dependency inversion variable 
    weak var view: NumbersLightDetailViewProtocol?
    var router: NumbersLightDetailRouterProtocol?
    var interactor: NumbersLightDetailUseCaseProtocol?

    // MARK: Instance Variable

    // MARK: Constructors
    init(interactor: NumbersLightDetailUseCaseProtocol? = nil, router: NumbersLightDetailRouterProtocol? = nil, view: NumbersLightDetailViewProtocol? = nil) {
        self.interactor = interactor
        self.router = router
        self.view = view
    }

     // MARK: Instance Methods
}

// MARK: NumbersLightDetailPresentationProtocol
extension NumbersLightDetailPresenter: NumbersLightDetailPresentationProtocol {

}

// MARK: NumbersLightDetailInteractorOutputProtocol
extension NumbersLightDetailPresenter: NumbersLightDetailInteractorOutputProtocol {

}

// MARK: NumbersLightDetailViewEventResponderProtocol
extension NumbersLightDetailPresenter: NumbersLightDetailViewEventResponderProtocol {
     func viewDidLoad() {
         
     }
}
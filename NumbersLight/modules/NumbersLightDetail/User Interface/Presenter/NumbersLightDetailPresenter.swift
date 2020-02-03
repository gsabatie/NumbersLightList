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
    var name: String?

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
    func presentnumberLightDetail(name: String) {
        
        self.name = name
         self.view?.isLoading = true
        self.interactor?.getNumberLight(name: name) { (result: Result<NumberLight, Error>) in
            
            DispatchQueue.main.async {
                self.view?.isLoading = false
                switch result {
                case .success(let numberLight):
                    self.view?.numberLight = numberLight
                case .failure(let error):
                    self.view?.display(errorMessage: error.localizedDescription)
                    return
                }
            }
        }
    }
}

// MARK: NumbersLightDetailInteractorOutputProtocol
extension NumbersLightDetailPresenter: NumbersLightDetailInteractorOutputProtocol {

}

// MARK: NumbersLightDetailViewEventResponderProtocol
extension NumbersLightDetailPresenter: NumbersLightDetailViewEventResponderProtocol {
     func viewDidLoad() {
         
     }
    
    func viewDidAppear() {
      
    }
}

//
//  NumbersLightListNumbersLightListPresenter.swift
//  NumbersLight
//
//  Created by Guillaume on 27/01/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

import Foundation

final class NumbersLightListPresenter {
    
    // MARK: Dependency inversion variable 
    weak var view: NumbersLightListViewProtocol?
    var router: NumbersLightListRouterProtocol?
    var interactor: NumbersLightListUseCaseProtocol?
    
    // MARK: Instance Variable
    
    
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
    
}

// MARK: NumbersLightListInteractorOutputProtocol
extension NumbersLightListPresenter: NumbersLightListInteractorOutputProtocol {
    
}

// MARK: NumbersLightListViewEventResponderProtocol
extension NumbersLightListPresenter: NumbersLightListViewEventResponderProtocol {
    func viewDidLoad() {
        self.view?.isLoading = true
    }
    
    func viewDidAppear() {
        self.interactor?.getLightNumber{ (result: Result<[NumberLight], Error>) in
            self.view?.isLoading = false
            switch result {
            case .success( let lightNumbers):
                self.view?.numberLight = lightNumbers
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func didRefreshTableView() {
        self.view?.isLoading = true
        
        self.interactor?.getLightNumber{ (result: Result<[NumberLight], Error>) in
                  self.view?.isLoading = false
                  switch result {
                  case .success( let lightNumbers):
                      self.view?.numberLight = lightNumbers
                  case .failure(let error):
                      print(error)
                  }
              }
    }
}

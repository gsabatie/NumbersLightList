//
//  NumbersLightListNumbersLightListInteractor.swift
//  NumbersLight
//
//  Created by Guillaume on 27/01/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

import Foundation

import Alamofire
import EasyOSLogger

final class JapaneseNumeralListInteractor {
    
    // MARK: Dependency inversion variable 
    weak var output: JapaneseNumeralListInteractorOutputProtocol?
    
    // MARK: Instance Variable
    var japaneseNumeralService: JapaneseNumeralService
    
    var isNetworkReachable: Bool {
        guard let manager: NetworkReachabilityManager = self.manager else { return false }
        return manager.isReachable
    }
    
    let manager: NetworkReachabilityManager? = NetworkReachabilityManager(host: "dev.tapptic.com")
    
    // MARK: Constructors
    init(
        output: JapaneseNumeralListInteractorOutputProtocol? = nil,
        japaneseNumeralService: JapaneseNumeralService = TappticJapaneseNumeralService()
    ) {
        self.output = output
        self.japaneseNumeralService = japaneseNumeralService
        self.manager?.listener = { status in
            Log.debug("Network Status Changed: \(status)")
            self.output?.reachabilityDidChange(status:  status)
        }
        self.manager?.startListening()
    }
}

// MARK: NumbersLightListUseCaseProtocol
extension JapaneseNumeralListInteractor: JapaneseNumeralListUseCaseProtocol {
    func getJapaneseNumerals(completion: @escaping JapaneseNumeralsCompletionBlock) {
        self.japaneseNumeralService.getJapaneseNumerals {
            (result: Swift.Result<[JapaneseNumeral], Error>) in
            completion(result)
        }
    }
}

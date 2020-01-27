//
//  NumbersLightListNumbersLightListView.swift
//  NumbersLight
//
//  Created by Guillaume on 27/01/2020.
//  Copyright © 2020 gsabatie. All rights reserved.
//

@available(iOS 13.0.0, *)
import SwiftUI

@available(iOS 13.0.0, *)
final class NumbersLightListView: View {

   // MARK: Dependency inversion variable 
   var output: NumbersLightListViewEventResponderProtocol?

   // MARK: Instance variable

    var body: some View {
        Text("hello world")
   }
}

// MARK: MeSwiftViewProtocol
@available(iOS 13.0.0, *)
extension NumbersLightListView: NumbersLightListViewProtocol {

}


#if DEBUG
@available(iOS 13.0.0, *)
struct NumbersLightListView_Previews: PreviewProvider {
   static var previews: some View {
       ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
           NumbersLightListView()
               .previewDevice(PreviewDevice(rawValue: deviceName))
               .previewDisplayName(deviceName)
       }
   }
}
#endif

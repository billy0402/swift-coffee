//
//  AddCoffeOrderViewModel.swift
//  swift-coffee
//
//  Created by User on 2020/3/14.
//  Copyright © 2020 NTUB. All rights reserved.
//

import Foundation

struct AddCoffeOrderViewModel {

    var name: String?
    var email: String?
    
    var types: [String] {
        return CoffeeType.allCases.map { $0.rawValue.capitalized }
    }
    
    var sizes: [String] {
        return CoffeeSize.allCases.map { $0.rawValue.capitalized }
    }

}

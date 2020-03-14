//
//  OrderListViewModel.swift
//  swift-coffee
//
//  Created by User on 2020/3/14.
//  Copyright © 2020 NTUB. All rights reserved.
//

import Foundation

class OrderListViewModel {

    var ordersViewModel: [OrderViewModel]
    
    init() {
        self.ordersViewModel = [OrderViewModel]()
    }

}

extension OrderListViewModel {

    func orderViewModel(at index: Int) -> OrderViewModel {
        return self.ordersViewModel[index]
    }

}

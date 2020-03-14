//
//  AddOrderViewController.swift
//  swift-coffee
//
//  Created by User on 2020/3/14.
//  Copyright © 2020 NTUB. All rights reserved.
//

import Foundation
import UIKit

class AddOrderViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private var vm = AddCoffeOrderViewModel()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.vm.types.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CoffeeTypeTableViewCell", for: indexPath)
        
        cell.textLabel?.text = self.vm.types[indexPath.row]
        
        return cell
    }

}

//
//  ViewController.swift
//  TableViewTask
//
//  Created by Racovita Alexandru on 6/21/18.
//  Copyright © 2018 Racovita Alexandru. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var data = [Int]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = String(data[indexPath.row])
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 2...1000000 {
            data.append(i)
        }
        
    }

  

}


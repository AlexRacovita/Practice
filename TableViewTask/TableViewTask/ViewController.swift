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
        if(indexPath.row % 2 == 0) {
            cell.backgroundColor = UIColor .black
            cell.textLabel?.textColor = UIColor.white
        }
        return cell
    }
    
    func checkPrime (_ i:Int) -> Bool{
        
        for x in 2...Int(sqrt(Double(i))){
            if (i % x == 0){
                return false
            }
        
        }
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        data.append(2)
        data.append(3)
        for i in 5...1000000 {
            if(checkPrime(i) == true){
                data.append(i)
            }
        }
        
    }

  

}


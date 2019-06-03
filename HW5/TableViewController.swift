//
//  TableViewController.swift
//  HW5
//
//  Created by 野崎絵未里 on 2019/06/02.
//  Copyright © 2019年 野崎絵未里. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var number:[Int]!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let random = Int.random(in: 0..<100)
        
        for i in 0 ..< 19 {
            number.append(random)
            print(number)
        }
        
        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        //cell.Label.text = String(number[indexPath.row - 1])
        
        return cell
    }
    
}

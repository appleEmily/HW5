//
//  TableViewController.swift
//  HW5
//
//  Created by 野崎絵未里 on 2019/06/02.
//  Copyright © 2019年 野崎絵未里. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    //let number = Int.random(in: 1..<100)
    let tameshi = ["demasuka","いける"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //cell.textLabel.text = String(number)
        cell.textLabel!.text = tameshi[indexPath.row]
        return cell
    }
    
}

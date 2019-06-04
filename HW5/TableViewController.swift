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
        for i in 0 ..< 20 {
            let random:Int = Int.random(in: 0..<100)
            print(random)
            number.append(random)
            //numberの配列にrandom中洲を２０個入れられた。
        }
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        super.viewDidLoad()
        print(number)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    //sectionの数
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //cellの個数
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.label.text = String(number[indexPath.row])
        
        return cell
    }
    
}

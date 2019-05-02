//
//  ViewController.swift
//  SimpleTableViewTest 02
//
//  Created by dit03 on 2019. 5. 2..
//  Copyright © 2019년 201730529 김민철. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    public func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Section Header 1"
        } else {
            return "Section Header 2"
        }
    }
    
    public func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section == 0 {
            return "Section Footer 1"
        } else {
            return "Section Footer 2"
        }
    }
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Re", for: indexPath)
        let section = indexPath.section
        let row = indexPath.row
        
        cell.textLabel?.text = "Section " + String(section)
        cell.detailTextLabel?.text = "Row " + String(row)
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
    }
}

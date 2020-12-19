//
//  ViewController.swift
//  TableView_PracticeProgram
//
//  Created by Akash New on 18/12/20.
//  Copyright © 2020 Manei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    var name = ["John", "Mike", "Adam", "Ricky", "Helen"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
            
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTableViewCell")
    }


}

extension ViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
//
//        cell.textLabel?.text = name[indexPath.row]
//
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        cell.nameLabel.text = name[indexPath.row]
        return cell
    }
    
    
}

extension ViewController : UITableViewDelegate {
    
}





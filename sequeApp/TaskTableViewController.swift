//
//  TaskTableViewController.swift
//  stroyBoardApp
//
//  Created by Shan Indrakumar on 2019-10-27.
//  Copyright © 2019 CS2680. All rights reserved.
//

import UIKit

class TaskTableViewController: UITableViewController {

    var tasks: [String]?
    
    override func viewDidLoad(){
        self.tasks=["Walk the dog", "URGENT: Buy milk", "Clean kitchen", "Go to bank", "URGENT: Fold Laundry"]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        print(self.tasks?.count ?? 0)
        return self.tasks?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let task=tasks?[indexPath.row]{
            let range=task.range(of: "URGENT")
            let cellIdentifier = (range==nil) ? "plainCell" : "attentionCell"
            
            if let cell=tableView.dequeueReusableCell(withIdentifier: cellIdentifier){
                if let label=cell.viewWithTag(1) as? UILabel{
                    label.text=task
                }
                return cell
            }
        }
        return UITableViewCell()
    }
    
}

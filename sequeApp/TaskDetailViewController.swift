//
//  TaskDetailViewController.swift
//  sequeApp
//
//  Created by Shan Indrakumar on 2019-10-29.
//  Copyright © 2019 CS2680. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    weak var taskTableView: TaskTableViewController?
    
    var taskString: String?
    //The taskTableView property holds a reference back to the TaskTableViewController so this class can send data back once the Text Field has been edited.
  override func viewDidLoad() {
        super.viewDidLoad()
        self.textView.text = (taskString ?? "")
        self.textView.becomeFirstResponder()
    }

    
 override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        taskTableView?.updateText(text: self.textView.text)
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

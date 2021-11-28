//
//  ViewController.swift
//  Beast List
//
//  Created by Doaa Albishri on 28/11/2021.
//

import UIKit

class ViewController: UIViewController {
var tasks = ["1","2","3"]
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var textFiled: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
    }

    @IBAction func beastBtn(_ sender: UIButton) {
        let input = textFiled.text!
        tasks.append(input)
        tableView.reloadData()
        textFiled.text = ""
    }
    
}

extension ViewController: UITableViewDataSource{
    
    // MAKE SURE THESE ARE WITHIN UITableViewDataSource EXTENSION!
    // How many cells are we going to need?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return an integer that indicates how many rows (cells) to draw
        
        return tasks.count
    }

    // How should I create each cell?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get the UITableViewCell and create/populate it with data then return it
        let cell = tableView.dequeueReusableCell(withIdentifier:"MyCell", for: indexPath)
        cell.textLabel?.text = tasks[indexPath.row]
        return cell
    }


}



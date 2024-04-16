//
//  ViewController.swift
//  RadioButton
//
//  Created by Zubin Gala on 15/04/24.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var titleArray = ["English (English)", "हिन्दी (Hindi)","मराठी (Marathi)", "தமிழ் (Tamil)"]
    var selectedIndex: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "radioCell", for: indexPath) as! RadioCell
        cell.radioView.title = titleArray[indexPath.row]
        cell.radioView.isChecked = indexPath.row == selectedIndex
        cell.radioView.button.tag = indexPath.row
        cell.radioView.button.addTarget(self, action: #selector(radioButtonTapped(_:)), for: .touchUpInside)
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleArray.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex = indexPath.row
        print(titleArray[selectedIndex])
        tableView.reloadData()
    }
    @objc func radioButtonTapped(_ sender: UIButton) {
        selectedIndex = sender.tag
        print(titleArray[selectedIndex])
        tableView.reloadData()
    }
}


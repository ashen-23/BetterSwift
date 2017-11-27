//
//  ViewController.swift
//  BetterSwift
//
//  Created by Shi Jian on 2017/11/23.
//  Copyright © 2017年 AshenDever. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var demos = createDemos()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
    }

}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return demoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let aCell = tableView.dequeueReusableCell(withIdentifier: "DemoList") as! DemoListCell
        aCell.demoModel = demos[indexPath.row]
        
        return aCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = storyBoard(name: "Demo", identifier: demos[indexPath.row].identifier!)
        
        navigationController?.pushViewController(vc, animated: true)
    }
}


//
//  BaseController.swift
//  ZW_Swift
//
//  Created by zeroing on 2017/7/7.
//  Copyright © 2017年 com.qq-app.appid. All rights reserved.
//

import UIKit

class BaseController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func config(tableView: UITableView) -> Void {
//        tableView.delegate = self
//        tableView.dataSource = self
        tableView.tableFooterView = UIView()
    }

}

//
//  ViewController.swift
//  ZW_Swift
//
//  Created by zeroing on 2017/7/7.
//  Copyright © 2017年 com.qq-app.appid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tableV: UITableView!
    var dataArray: NSMutableArray = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let model1 = Model()
        model1.setName(Aname: "234")
        
        dataArray = [Model(),model1]
//        self.inittableV()
        self.initCommon()
        self.initLinearView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initCommon() -> Void {
        
    }
    
    func initLinearView() -> Void {
        
    }
    
    func inittableV() -> Void {
        tableV = UITableView.init(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height), style: .plain)
        self.view.addSubview(tableV)
        tableV.delegate = self
        tableV.dataSource = self
        tableV.tableFooterView = UIView()
    }

}

extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return dataArray.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell.init(style: .default, reuseIdentifier: "cell")
        }
//        let model = dataArray[indexPath.row] as! Model
        cell?.textLabel?.text = (dataArray[indexPath.row] as! Model).name
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        JQProgressHUDTool.jq_showNormalHUD(msg: "Loading...")
        JQProgressHUDTool.jq_showToastHUD(view: self.view, msg: "hehe", duration: 2, isUserInteractionEnabled: false, animation: false)
    }
}

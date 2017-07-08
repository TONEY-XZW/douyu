
//
//  BaseController.swift
//  ZW_Swift
//
//  Created by zeroing on 2017/7/7.
//  Copyright © 2017年 com.qq-app.appid. All rights reserved.
//

import UIKit


class BaseController: UIViewController {
    
    var mainView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    
    func initMainView(width: CGFloat, height: CGFloat) -> Void {
        mainView = UIScrollView.init(frame: CGRect(x: 0, y: 0, width: width, height: height))
        self.view.addSubview(mainView)
        mainView.showsVerticalScrollIndicator = false
        mainView.showsHorizontalScrollIndicator = false
//        return mainView
    }
    
    func mainViewAddSubView(subView: UIView) -> Void {
        mainView.addSubview(subView)
        mainView.contentSize = CGSize.init(width: kScreenWidth, height: subView.frame.maxY+10)
    }
}

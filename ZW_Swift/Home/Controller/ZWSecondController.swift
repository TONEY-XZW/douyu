//
//  ZWSecondController.swift
//  ZW_Swift
//
//  Created by zeroing on 2017/7/8.
//  Copyright © 2017年 com.qq-app.appid. All rights reserved.
//

import UIKit

class ZWSecondController: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        initMainView(width: kScreenWidth, height: UIScreen.main.bounds.size.height)
       
        let labe1 = UILabel.init(frame: CGRect(x: 10, y: 10, width: kScreenWidth-20, height: 300))
        let labe2 = UILabel.init(frame: CGRect(x: labe1.minX, y: labe1.maxY+10, width: kScreenWidth-20, height: 300))
        let labe3 = UILabel.init(frame: CGRect(x: labe2.minX, y: labe2.maxY+10, width: kScreenWidth-20, height: 300))
        let labe4 = UILabel.init(frame: CGRect(x: labe3.minX, y: labe3.maxY+10, width: kScreenWidth-20, height: 300))
        
        let labe12 = UIView.init(frame: CGRect(x: 10, y: labe4.maxY+10, width: kScreenWidth-20, height: 300))
        let name1 = UIView.init(frame: CGRect(x: labe12.minX, y: labe12.maxY+10, width: labe12.width, height: labe12.height))
        
        name1.width = 100;
        name1.height = 900;
        
        mainViewAddSubView(subView: labe1)
        mainViewAddSubView(subView: labe2)
        mainViewAddSubView(subView: labe3)
        mainViewAddSubView(subView: labe4)
        mainViewAddSubView(subView: labe12)
        mainViewAddSubView(subView: name1)
        
        labe1.backgroundColor = .yellow
        labe2.backgroundColor = .green
        
        labe3.backgroundColor = "898989".Color()
        
        labe4.backgroundColor = UIColor.init(hexColor: "123123")
        
        labe12.backgroundColor  = "f98223".Color()
        name1.backgroundColor  = "f98223".Color()
        
        let model = UIDevice.current.localizedModel
        print("\(model)")
        
        ZWLog(message: name1.maxY)
        
        labe1.text = "hehe"
        labe2.text = "hehe"
        labe3.text = "hehe"
        
        mainView.backgroundColor = "123123".Color()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

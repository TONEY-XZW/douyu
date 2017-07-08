//
//  LiveController.swift
//  ZW_Swift
//
//  Created by zeroing on 2017/1/1.
//  Copyright © 2017年 com.qq-app.appid. All rights reserved.
//

import UIKit

class LiveController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "直播"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "topic_button_toLive", highImageName: "tab_recommend_hover", size: CGSize.zero, target: self, action: #selector(leftItemClick))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func leftItemClick() -> Void {
        
    }

}

//
//  HomeController.swift
//  ZW_Swift
//
//  Created by zeroing on 2017/1/1.
//  Copyright © 2017年 com.qq-app.appid. All rights reserved.
//

import UIKit

class HomeController: BaseController {
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "首页"
        setupNavigationBar()
    }
    
    // MARK: 设置导航栏
    fileprivate func setupNavigationBar() {
        setupNavigationLeftBar()
        setupNavigationRightBar()
    }
    fileprivate func setupNavigationLeftBar() {
//        navigationItem.leftBarButtonItem = UIBarButtonItem.createBarButtonItem(imageName: "topic_button_toLive", highImageName: "tab_recommend_hover", size: CGSize.zero, action: #selector(leftItemClick))
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "topic_button_toLive", highImageName: "tab_recommend_hover", size: CGSize.zero, target: self, action: #selector(leftItemClick))
        
    }
    
    fileprivate func setupNavigationRightBar() {
//        let size = CGSize(width: 40, height: 44)
//        let historyItem = UIBarButtonItem.createBarButtonItem(imageName: "topic_button_toLive", highImageName: "tab_recommend_hover", size: size, action: #selector(leftItemClick))
//        let searchItem = UIBarButtonItem.createBarButtonItem(imageName: "topic_button_toLive", highImageName: "tab_recommend_hover", size: size, action: #selector(leftItemClick))
//        let qrCodeItem = UIBarButtonItem.createBarButtonItem(imageName: "topic_button_toLive", highImageName: "tab_recommend_hover", size: size, action: #selector(leftItemClick))
//        navigationItem.rightBarButtonItems = [historyItem, searchItem , qrCodeItem]
        
        let size = CGSize(width: 40, height: 44)
        let historyItem = UIBarButtonItem(imageName: "topic_button_toLive", highImageName: "tab_recommend_hover", size: size, target: self, action: #selector(leftItemClick))
        let searchItem = UIBarButtonItem(imageName: "topic_button_toLive", highImageName: "tab_recommend_hover", size: size, target: self, action: #selector(leftItemClick))
        let qrCodeItem = UIBarButtonItem(imageName: "topic_button_toLive", highImageName: "tab_recommend_hover", size: size, target: self, action: #selector(leftItemClick))
        navigationItem.rightBarButtonItems = [historyItem, searchItem , qrCodeItem]
}
    func leftItemClick() -> Void {
        navigationController?.pushViewController(ZWSecondController(), animated: true)
    }
    
    
    
}

//extension UIBarButtonItem {
////    class func createBarButtonItem(imageName : String, highImageName : String, size : CGSize, target : AnyObject? = nil, action : Selector) -> UIBarButtonItem {
////        // 1.创建UIButton
////        let btn = UIButton(type: .custom)
////        
////        // 2.给UIButton设置属性
////        btn.setImage(UIImage(named: imageName), for: .normal)
////        if highImageName != "" {
////            btn.setImage(UIImage(named: highImageName), for: .highlighted)
////        }
////        
////        // 3.设置尺寸
////        if size == CGSize.zero {
////            btn.sizeToFit()
////        } else {
////            btn.frame = CGRect(origin: CGPoint.zero, size: size)
////        }
////        // 4.监听点击
////        btn.addTarget(target, action: action, for: .touchUpInside)
////        
////        return UIBarButtonItem(customView: btn)
////    }
//    
//    convenience init(imageName : String, highImageName : String, size : CGSize, target : AnyObject, action : Selector){
//        let btn = UIButton(type: .custom)
//        btn.setImage(UIImage(named: imageName), for: .normal)
//        if highImageName != "" {
//            btn.setImage(UIImage(named: highImageName), for: .highlighted)
//        }
//        if size == CGSize.zero{
//            btn.sizeToFit()
//        } else {
//            btn.frame = CGRect(origin: CGPoint.zero, size: size)
//        }
//        btn.addTarget(target, action: action, for: .touchUpInside)
//        self.init(customView: btn)
//    }
//}







//
//  JQProgressHUDLabel.swift
//  JQProgressHUD
//
//  Created by HJQ on 2017/7/1.
//  Copyright © 2017年 HJQ. All rights reserved.
//

import UIKit

public class JQProgressHUDLabel: UILabel {

    public var insets: UIEdgeInsets?
    
    override  public func drawText(in rect: CGRect) {
        super.drawText(in: UIEdgeInsetsInsetRect(rect, self.insets!))
    }

}

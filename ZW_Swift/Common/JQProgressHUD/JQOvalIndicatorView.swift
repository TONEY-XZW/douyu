//
//  JQOvalIndicatorView.swift
//  JQProgressHUD
//
//  Created by HJQ on 2017/7/5.
//  Copyright © 2017年 HJQ. All rights reserved.
//

import UIKit

public class JQOvalIndicatorView: UIView {

    public var color: UIColor? = UIColor.white {
        didSet{
            commonInit()
        }
    }
    
    public var lineWidth: CGFloat = 3.0 {
        didSet{
            commonInit()
        }
    }
    
    //private let radius: CGFloat = 10
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - private methods
    private func setupUI() {
        
        layer.addSublayer(ovalShapeLayer)
        commonInit()
        startAnimation()
    }
    
    private func commonInit() {
        
        ovalShapeLayer.strokeColor = color!.cgColor
        ovalShapeLayer.fillColor = UIColor.clear.cgColor
        ovalShapeLayer.lineWidth = lineWidth
        
        let anotherOvalRadius = frame.size.height/2 * 0.85
        
        ovalShapeLayer.path = UIBezierPath(ovalIn: CGRect(x: frame.size.width/2 - anotherOvalRadius, y: frame.size.height/2 - anotherOvalRadius, width: anotherOvalRadius * 2, height: anotherOvalRadius * 2)).cgPath
        ovalShapeLayer.lineCap = kCALineCapRound
        
        
    }
    
    // MARK: - lazy load
    fileprivate lazy var ovalShapeLayer: CAShapeLayer = {
        
        let indicatorLayer = CAShapeLayer()
        return indicatorLayer
    }()

    
    fileprivate func startAnimation() {
        
        let strokeStartAnimate = CABasicAnimation(keyPath: "strokeStart")
        strokeStartAnimate.fromValue = -0.5
        strokeStartAnimate.toValue = 1
        
        let strokeEndAnimate = CABasicAnimation(keyPath: "strokeEnd")
        strokeEndAnimate.fromValue = 0.0
        strokeEndAnimate.toValue = 1
        
        let strokeAnimateGroup = CAAnimationGroup()
        strokeAnimateGroup.duration = 1.5
        strokeAnimateGroup.repeatCount = HUGE
        strokeAnimateGroup.animations = [strokeStartAnimate, strokeEndAnimate]
        ovalShapeLayer.add(strokeAnimateGroup, forKey: nil)
    }

}

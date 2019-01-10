//
//  AItextView.swift
//  DemoTextView
//
//  Created by agileimac-1 on 10/01/19.
//  Copyright © 2019 Urvish Patel. All rights reserved.
//

import UIKit

class AITextView: UITextView {

    
    var hegihtConstant: CGFloat = 50.0
    var heightUpdateHandler: ((_ txtView: AITextView) -> Swift.Void)? = nil
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        for subView in self.subviews where  NSStringFromClass(type(of: subView)) == "_UITextContainerView" {
            hegihtConstant = subView.frame.size.height
            heightUpdateHandler? (self)
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        for subView in self.subviews where  NSStringFromClass(type(of: subView)) == "_UITextContainerView" {
            hegihtConstant = subView.frame.size.height
            heightUpdateHandler? (self)
        }
    }
    
}

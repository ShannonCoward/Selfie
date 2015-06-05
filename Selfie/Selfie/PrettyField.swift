//
//  PrettyField.swift
//  Selfie
//
//  Created by Shannon Armon on 6/4/15.
//  Copyright (c) 2015 Shannon Armon. All rights reserved.
//

import UIKit

class PrettyField: UITextField {
    
    @IBInspectable var cornerRadius:CGFloat = 10
    @IBInspectable var fillColor:UIColor = UIColor.clearColor()
    @IBInspectable var strokeColor:UIColor = DARK_BLUE
    @IBInspectable var strokeWidth:CGFloat = 1
    
    
    override func drawRect(rect: CGRect) {
        
        var context = UIGraphicsGetCurrentContext()
        
        let insetRect = CGRectInset(rect, strokeWidth / 2, strokeWidth / 2)
        
        let path = UIBezierPath(roundedRect: insetRect, cornerRadius: cornerRadius)
        
        fillColor.set()
        
        
        
        CGContextAddPath(context, path.CGPath)
        CGContextFillPath(context)
        
        
        
        strokeColor.set()
        
        CGContextSetLineWidth(context, strokeWidth)
        CGContextAddPath(context, path.CGPath)
        CGContextStrokePath(context)
        
        

    /*

    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    }
    
    override func textRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset( bounds , 10 , 10)
        
    }
    
    override func editingRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds , 10 , 10 )
    }
    
    
}


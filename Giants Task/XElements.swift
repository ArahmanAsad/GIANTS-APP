//
//  ViewController.swift
//  Giants Task
//
//  Created by A.Rahman on 12/6/18.
//  Copyright © 2018 per. All rights reserved.
//

import UIKit

extension UIView {
    
    @IBInspectable var cornerRadius : CGFloat {
        get {return self.layer.cornerRadius}
        set{self.layer.cornerRadius=newValue}
    }
    @IBInspectable var borderColor :UIColor{
        get{return UIColor(cgColor: self.layer.borderColor!)}
        set{self.layer.borderColor=newValue.cgColor}
    }
    @IBInspectable var borderWidth : CGFloat{
        get{return self.layer.borderWidth}
        set{self.layer.borderWidth=newValue}        
    }
}


extension UITextField{
    @IBInspectable var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSAttributedStringKey.foregroundColor: newValue!])
        }
    }

}
        
   



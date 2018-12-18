//
//  CustomTextField.swift
//  InstagramForm
//
//  Created by Mezut on 17/12/2018.
//  Copyright © 2018 Mezut. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {

        let padding = UIEdgeInsets.init(top: 0, left: 13, bottom: 0, right: 13)
         
        override func textRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
        }
        
        
        override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
        }
        
        override func editingRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
        }

    
    }


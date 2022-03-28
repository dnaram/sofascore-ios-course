//
//  CustomTextField.swift
//  FirstHomework
//
//  Created by Marko Andreis on 28.03.2022..
//

import UIKit

class CustomTextField: UITextField {
    
    let insets: UIEdgeInsets
    
    init(insets: UIEdgeInsets) {
        self.insets = insets
        super.init(frame: .zero)
        
        layer.cornerRadius = 8
        layer.borderWidth = 1.5
        textColor = .white
        attributedPlaceholder = NSAttributedString(
            string: "Empty Player Name",
            attributes: [NSAttributedString.Key.foregroundColor : UIColor.white]
        )
    }
    
    required init?(coder Decoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: insets)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: insets)
    }
}

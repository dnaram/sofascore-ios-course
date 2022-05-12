//
//  CustomLabel.swift
//  FirstHomework
//
//  Created by Marko Andreis on 29.03.2022..
//

import UIKit

class CustomLabel: UILabel {
    
    init() {
        super.init(frame: .zero)
        
        lineBreakMode = .byWordWrapping
        numberOfLines = 0
        textAlignment = .center
        textColor = .white
        text = "Please enter player's name. We need to know who to look for 😀."
    }
    
    required init?(coder Decoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

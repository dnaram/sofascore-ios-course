//
//  CustomButton.swift
//  FirstHomework
//
//  Created by Marko Andreis on 29.03.2022..
//

import UIKit

class CustomButton: UIButton {
    
    init() {
        super.init(frame: .zero)
        
        layer.cornerRadius = 5
        backgroundColor = .systemPink
        setTitle("OK", for: .normal)
    }
    
    required init?(coder Decoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

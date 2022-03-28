//
//  MainViewController.swift
//  FirstHomework
//
//  Created by Marko Andreis on 19.03.2022..
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    
    private var topLeftImage: UIImageView!
    private var topRightImage: UIImageView!
    private var bottomLeftImage: UIImageView!
    private var bottomRightImage: UIImageView!
    private var checkedImage: UIImageView!
    private var whiteCircle: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildViews()
    }
    
    private func buildViews() {
        createViews()
        styleViews()
        defineLayoutForViews()
    }
    
    private func createViews() {
        topLeftImage = UIImageView(image: UIImage(named: "patrick_down.jpeg"))
        view.addSubview(topLeftImage)
        
        topRightImage = UIImageView(image: UIImage(named: "patrick_left.jpeg"))
        view.addSubview(topRightImage)
        
        bottomLeftImage = UIImageView(image: UIImage(named: "patrick_right.jpeg"))
        view.addSubview(bottomLeftImage)
        
        bottomRightImage = UIImageView(image: UIImage(named: "patrick_up.jpeg"))
        view.addSubview(bottomRightImage)
        
        whiteCircle = UIImageView(image: UIImage(systemName: "circle.fill"))
        view.addSubview(whiteCircle)
        
        checkedImage = UIImageView(image: UIImage(systemName: "checkmark.circle.fill"))
        view.addSubview(checkedImage)
    }
    
    private func styleViews() {
        view.backgroundColor = .black
        
        whiteCircle.tintColor = .white
    }
    
    private func defineLayoutForViews() {
        topLeftImage.translatesAutoresizingMaskIntoConstraints = false
        topRightImage.translatesAutoresizingMaskIntoConstraints = false
        bottomLeftImage.translatesAutoresizingMaskIntoConstraints = false
        bottomRightImage.translatesAutoresizingMaskIntoConstraints = false
        checkedImage.translatesAutoresizingMaskIntoConstraints = false
        whiteCircle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            topLeftImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            topLeftImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            topLeftImage.widthAnchor.constraint(equalToConstant: 100),
            topLeftImage.heightAnchor.constraint(equalToConstant: 100),
            
            topRightImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            topRightImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            topRightImage.widthAnchor.constraint(equalToConstant: 100),
            topRightImage.heightAnchor.constraint(equalToConstant: 100),
            
            bottomLeftImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            bottomLeftImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            bottomLeftImage.widthAnchor.constraint(equalToConstant: 100),
            bottomLeftImage.heightAnchor.constraint(equalToConstant: 100),
            
            bottomRightImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            bottomRightImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            bottomRightImage.widthAnchor.constraint(equalToConstant: 100),
            bottomRightImage.heightAnchor.constraint(equalToConstant: 100),
            
            checkedImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            checkedImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            checkedImage.widthAnchor.constraint(equalToConstant: 125),
            checkedImage.heightAnchor.constraint(equalToConstant: 125),
            
            whiteCircle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            whiteCircle.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            whiteCircle.widthAnchor.constraint(equalToConstant: 100),
            whiteCircle.heightAnchor.constraint(equalToConstant: 100),
        ])
        
    }
}

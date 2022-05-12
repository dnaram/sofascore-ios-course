//
//  AboutViewController.swift
//  FirstHomework
//
//  Created by Marko Andreis on 29.03.2022..
//

import Foundation
import UIKit

class AboutViewController: UIViewController {
    
    
    private var aboutLabel: UILabel!
    private var sofaScoreAcademyLabel: UILabel!
    private var classLabel: UILabel!
    
    private var appNameHolderLabel: UILabel!
    private var appNameLabel: UILabel!
    
    private var APICreditHolderLabel: UILabel!
    private var APICreditLabel: UILabel!
    
    private var developerHolderLabel: UILabel!
    private var developerLabel: UILabel!
    
    private var sofascoreText: UILabel!
    private var appleLogo: UIImageView!
    private var nameAndLogoContainer: UIStackView!
    
    
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
        aboutLabel = UILabel()
        aboutLabel.text = "About"
        aboutLabel.font = UIFont(name: "Roboto-Bold", size: 30)
        view.addSubview(aboutLabel)
        
        sofaScoreAcademyLabel = UILabel()
        sofaScoreAcademyLabel.text = "SofaScoreAcademy"
        sofaScoreAcademyLabel.font = UIFont(name: "Roboto-Bold", size: 18)
        view.addSubview(sofaScoreAcademyLabel)
        
        classLabel = UILabel()
        classLabel.text = "Class 2022"
        classLabel.font = UIFont(name: "Roboto-Regular", size: 12)
        view.addSubview(classLabel)
        
        nameAndLogoContainer = UIStackView()
        nameAndLogoContainer.layoutMargins = UIEdgeInsets(top: 20, left: 25, bottom: 20, right: 45)
        nameAndLogoContainer.isLayoutMarginsRelativeArrangement = true
        nameAndLogoContainer.backgroundColor = .systemGray6
        nameAndLogoContainer.axis = .horizontal
        nameAndLogoContainer.alignment = .fill
        nameAndLogoContainer.distribution = .fillProportionally
        nameAndLogoContainer.translatesAutoresizingMaskIntoConstraints = false
        nameAndLogoContainer.layer.cornerRadius = 10
        view.addSubview(nameAndLogoContainer)
        
        sofascoreText = UILabel()
        sofascoreText.text = "SofaScore"
        sofascoreText.font = UIFont(name: "Roboto-Black", size: 22)
        
       
        appleLogo = UIImageView(image: UIImage(named: "apple_logo.png"))
        
        nameAndLogoContainer.addArrangedSubview(sofascoreText)
        nameAndLogoContainer.addArrangedSubview(appleLogo)
        
        appNameHolderLabel = UILabel()
        appNameHolderLabel.text = "App Name"
        appNameHolderLabel.font = UIFont(name: "Roboto-Medium", size: 12)
        appNameHolderLabel.textColor = .systemGray
        view.addSubview(appNameHolderLabel)
        
        appNameLabel = UILabel()
        appNameLabel.text = "Super Cool Weather App"
        appNameLabel.font = UIFont(name: "Roboto-Regular", size: 15)
        view.addSubview(appNameLabel)
        
        APICreditHolderLabel = UILabel()
        APICreditHolderLabel.text = "API Credit"
        APICreditHolderLabel.font = UIFont(name: "Roboto-Medium", size: 12)
        APICreditHolderLabel.textColor = .systemGray
        view.addSubview(APICreditHolderLabel)
        
        APICreditLabel = UILabel()
        APICreditLabel.text = "metaweather"
        APICreditLabel.font = UIFont(name: "Roboto-Regular", size: 15)
        view.addSubview(APICreditLabel)
        
        developerHolderLabel = UILabel()
        developerHolderLabel.text = "Developer"
        developerHolderLabel.font = UIFont(name: "Roboto-Medium", size: 12)
        developerHolderLabel.textColor = .systemGray
        view.addSubview(developerHolderLabel)
        
        developerLabel = UILabel()
        developerLabel.text = "John Smith"
        developerLabel.font = UIFont(name: "Roboto-Regular", size: 15)
        view.addSubview(developerLabel)
        
        
    }
    
    private func styleViews() {
        view.backgroundColor = .white
    }
    
    private func defineLayoutForViews() {
        aboutLabel.translatesAutoresizingMaskIntoConstraints = false
        sofaScoreAcademyLabel.translatesAutoresizingMaskIntoConstraints = false
        classLabel.translatesAutoresizingMaskIntoConstraints = false
        appNameHolderLabel.translatesAutoresizingMaskIntoConstraints = false
        appNameLabel.translatesAutoresizingMaskIntoConstraints = false
        APICreditHolderLabel.translatesAutoresizingMaskIntoConstraints = false
        APICreditLabel.translatesAutoresizingMaskIntoConstraints = false
        developerHolderLabel.translatesAutoresizingMaskIntoConstraints = false
        developerLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            aboutLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            aboutLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            sofaScoreAcademyLabel.topAnchor.constraint(equalTo: aboutLabel.bottomAnchor, constant: 50),
            sofaScoreAcademyLabel.leadingAnchor.constraint(equalTo: aboutLabel.leadingAnchor),
            
            classLabel.topAnchor.constraint(equalTo: sofaScoreAcademyLabel.bottomAnchor, constant: 3),
            classLabel.leadingAnchor.constraint(equalTo: sofaScoreAcademyLabel.leadingAnchor),
            
            nameAndLogoContainer.topAnchor.constraint(equalTo: classLabel.bottomAnchor, constant: 10),
            nameAndLogoContainer.leadingAnchor.constraint(equalTo: classLabel.leadingAnchor),
            nameAndLogoContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            nameAndLogoContainer.heightAnchor.constraint(equalToConstant: 80),
            
            appleLogo.widthAnchor.constraint(equalToConstant: 37),
            
            appNameHolderLabel.topAnchor.constraint(equalTo: nameAndLogoContainer.bottomAnchor, constant: 30),
            appNameHolderLabel.leadingAnchor.constraint(equalTo: nameAndLogoContainer.leadingAnchor),
            
            appNameLabel.topAnchor.constraint(equalTo: appNameHolderLabel.bottomAnchor, constant: 3),
            appNameLabel.leadingAnchor.constraint(equalTo: appNameHolderLabel.leadingAnchor),
            
            APICreditHolderLabel.topAnchor.constraint(equalTo: appNameLabel.bottomAnchor, constant: 20),
            APICreditHolderLabel.leadingAnchor.constraint(equalTo: appNameLabel.leadingAnchor),
            
            APICreditLabel.topAnchor.constraint(equalTo: APICreditHolderLabel.bottomAnchor, constant: 3),
            APICreditLabel.leadingAnchor.constraint(equalTo: APICreditHolderLabel.leadingAnchor),
            
            developerHolderLabel.topAnchor.constraint(equalTo: APICreditLabel.bottomAnchor, constant: 20),
            developerHolderLabel.leadingAnchor.constraint(equalTo: APICreditLabel.leadingAnchor),
            
            developerLabel.topAnchor.constraint(equalTo: developerHolderLabel.bottomAnchor, constant: 3),
            developerLabel.leadingAnchor.constraint(equalTo: developerHolderLabel.leadingAnchor),
        
            
        ])
    }
}

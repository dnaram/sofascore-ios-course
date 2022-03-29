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
        view.addSubview(aboutLabel)
        
        sofaScoreAcademyLabel = UILabel()
        sofaScoreAcademyLabel.text = "SofaScoreAcademy"
        view.addSubview(sofaScoreAcademyLabel)
        
        classLabel = UILabel()
        classLabel.text = "Class 2022"
        view.addSubview(classLabel)
        
        appNameHolderLabel = UILabel()
        appNameHolderLabel.text = "App Name"
        view.addSubview(appNameHolderLabel)
        
        appNameLabel = UILabel()
        appNameLabel.text = "Super Cool Weather App"
        view.addSubview(appNameLabel)
        
        APICreditHolderLabel = UILabel()
        APICreditHolderLabel.text = "Super Cool Weather App"
        view.addSubview(APICreditHolderLabel)
        
        APICreditLabel = UILabel()
        APICreditLabel.text = "API Credit"
        view.addSubview(APICreditLabel)
        
        developerHolderLabel = UILabel()
        developerHolderLabel.text = "Developer"
        view.addSubview(developerHolderLabel)
        
        developerLabel = UILabel()
        developerLabel.text = "John Smith"
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
            
            aboutLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            aboutLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            sofaScoreAcademyLabel.topAnchor.constraint(equalTo: aboutLabel.bottomAnchor, constant: 20),
            sofaScoreAcademyLabel.leadingAnchor.constraint(equalTo: aboutLabel.leadingAnchor),
            
            classLabel.topAnchor.constraint(equalTo: sofaScoreAcademyLabel.bottomAnchor, constant: 20),
            classLabel.leadingAnchor.constraint(equalTo: sofaScoreAcademyLabel.leadingAnchor),
            
            appNameHolderLabel.topAnchor.constraint(equalTo: classLabel.bottomAnchor, constant: 20),
            appNameHolderLabel.leadingAnchor.constraint(equalTo: classLabel.leadingAnchor),
            
            appNameLabel.topAnchor.constraint(equalTo: appNameHolderLabel.bottomAnchor, constant: 20),
            appNameLabel.leadingAnchor.constraint(equalTo: appNameHolderLabel.leadingAnchor),
            
            APICreditHolderLabel.topAnchor.constraint(equalTo: appNameLabel.bottomAnchor, constant: 20),
            APICreditHolderLabel.leadingAnchor.constraint(equalTo: appNameLabel.leadingAnchor),
            
            APICreditLabel.topAnchor.constraint(equalTo: APICreditHolderLabel.bottomAnchor, constant: 20),
            APICreditLabel.leadingAnchor.constraint(equalTo: APICreditHolderLabel.leadingAnchor),
            
            developerHolderLabel.topAnchor.constraint(equalTo: APICreditLabel.bottomAnchor, constant: 20),
            developerHolderLabel.leadingAnchor.constraint(equalTo: APICreditLabel.leadingAnchor),
            
            developerLabel.topAnchor.constraint(equalTo: developerHolderLabel.bottomAnchor, constant: 20),
            developerLabel.leadingAnchor.constraint(equalTo: developerHolderLabel.leadingAnchor)
            
        ])
    }
}

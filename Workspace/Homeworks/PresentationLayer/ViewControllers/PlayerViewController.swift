//
//  PlayerViewController.swift
//  FirstHomework
//
//  Created by Marko Andreis on 08.04.2022..
//

import UIKit

class PlayerViewController: UIViewController {
    
    private var image: UIImage
    private var playerName: String
    
    private var playerImageView: UIImageView
    private var playerNameLabel: UILabel
    
    init(image: UIImage, name: String) {
        self.image = image
        self.playerName = name
        
        self.playerImageView = UIImageView(image: image)
        self.playerNameLabel = UILabel()
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "LA Lakers"

        createViews()
        styleViews()
        defineLayoutForViews()
    }
    
    private func createViews() {
        view.addSubview(playerImageView)
        view.addSubview(playerNameLabel)
        
        self.playerNameLabel.text = self.playerName
    }
    
    private func styleViews() {
        self.playerImageView.layer.cornerRadius = 10
        self.playerImageView.clipsToBounds      = true
        
        self.playerNameLabel.numberOfLines             = 0
        self.playerNameLabel.adjustsFontSizeToFitWidth = true
        self.playerNameLabel.textColor = UIColor(red: 253/255, green: 185/255, blue: 39/255, alpha: 1)
    }
    
    private func defineLayoutForViews() {
        setImageConstraints()
        setNameLabelConstraints()
    }
    
    func setImageConstraints() {
        playerImageView.translatesAutoresizingMaskIntoConstraints                                                 = false
        playerImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive                            = true
        playerImageView.heightAnchor.constraint(equalToConstant: 250).isActive                                    = true
        playerImageView.widthAnchor.constraint(equalTo: playerImageView.heightAnchor, multiplier: 13/16).isActive = true
        playerImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive                      = true
    }
    
    func setNameLabelConstraints() {
        playerNameLabel.translatesAutoresizingMaskIntoConstraints                                                = false
        playerNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive                           = true
        playerNameLabel.heightAnchor.constraint(equalToConstant: 80).isActive                                    = true
        playerNameLabel.topAnchor.constraint(equalTo: playerImageView.bottomAnchor).isActive                     = true
    }

}

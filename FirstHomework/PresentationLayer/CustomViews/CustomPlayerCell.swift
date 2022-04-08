//
//  CustomPlayerCell.swift
//  FirstHomework
//
//  Created by Marko Andreis on 08.04.2022..
//

import UIKit

class CustomPlayerCell: UITableViewCell {
    
    var playerImageView = UIImageView()
    var playerNameLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(playerImageView)
        addSubview(playerNameLabel)
        
        backgroundColor = .black
        
        configureImageView()
        configureNameLabel()
        
        setImageConstraints()
        setNameLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(player: Player) {
        playerImageView.image = player.image
        playerNameLabel.text = player.name
    }
    
    func configureImageView() {
        playerImageView.layer.cornerRadius = 10
        playerImageView.clipsToBounds      = true
    }
    
    func configureNameLabel() {
        playerNameLabel.numberOfLines             = 0
        playerNameLabel.adjustsFontSizeToFitWidth = true
        playerNameLabel.textColor = UIColor(red: 253/255, green: 185/255, blue: 39/255, alpha: 1)
    }
    
    func setImageConstraints() {
        playerImageView.translatesAutoresizingMaskIntoConstraints                                                = false
        playerImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive                                = true
        playerImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive                  = true
        playerImageView.heightAnchor.constraint(equalToConstant: 135).isActive                                    = true
        playerImageView.widthAnchor.constraint(equalTo: playerImageView.heightAnchor, multiplier: 13/16).isActive = true
    }
    
    func setNameLabelConstraints() {
        playerNameLabel.translatesAutoresizingMaskIntoConstraints                                                = false
        playerNameLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive                                = true
        playerNameLabel.leadingAnchor.constraint(equalTo: playerImageView.trailingAnchor, constant: 20).isActive = true
        playerNameLabel.heightAnchor.constraint(equalToConstant: 80).isActive                                    = true
        playerNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive               = true
    }

}

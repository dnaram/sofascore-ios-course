//
//  EnterPlayerNameController.swift
//  FirstHomework
//
//  Created by Marko Andreis on 28.03.2022..
//

import UIKit

class EnterPlayerNameViewController: UIViewController {
    
    let textField: UITextField = UITextField()
    let messageLabel: CustomLabel = CustomLabel()
    let OKButton: CustomButton = CustomButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        
        view.addSubview(textField)
        view.addSubview(messageLabel)
        view.addSubview(OKButton)
        
        textField.textColor = .white
        textField.attributedPlaceholder = NSAttributedString(
            string: "Empty Player Name",
            attributes: [NSAttributedString.Key.foregroundColor : UIColor.white]
        )
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        OKButton.translatesAutoresizingMaskIntoConstraints = false
        
        OKButton.addTarget(self, action: #selector(OKAction), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textField.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            // textField.heightAnchor.constraint(equalToConstant: 50),
            
            // messageLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            messageLabel.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 15),
            messageLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            messageLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            
            OKButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            OKButton.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 15),
            OKButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            OKButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            OKButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    
    @objc
    private func OKAction(sender: UIButton!) {
        if (textField.text!.isEmpty) {
            let alert = UIAlertController(title: "Player Name Empty", message: "Are you sure about that name?", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Try Again", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        } else {
            self.navigationController?.pushViewController(self.createAboutViewController(), animated: true)
        }
        
    }
    
    private func createAboutViewController() -> UIViewController {
        return AboutViewController()
    }
}

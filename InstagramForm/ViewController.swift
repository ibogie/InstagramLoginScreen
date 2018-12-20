//
//  ViewController.swift
//  InstagramForm
//
//  Created by Mezut on 14/12/2018.
//  Copyright © 2018 Mezut. All rights reserved.
//

import UIKit
import Foundation




class ViewController: UIViewController {
    
    
    let instagramLogo: UIImageView = {
       let image = UIImageView(image: #imageLiteral(resourceName: "Instagram-logo"))
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    

    let emailField: CustomTextField = {
        let textField = CustomTextField()
        textField.attributedPlaceholder  = NSAttributedString(string: "E-mail address", attributes: [NSAttributedString.Key.foregroundColor: Colors.whiteOpacity, NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16)])
        textField.textColor = UIColor.white
        textField.font = UIFont(name: "Roboto-Regular", size: 16)
        textField.backgroundColor = UIColor(red: 131/255, green: 87/255, blue: 199/255, alpha: 55)
        textField.layer.borderWidth = 1
        textField.layer.borderColor = textField.backgroundColor?.cgColor
        textField.layer.cornerRadius = 3
        textField.layer.masksToBounds = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let passwordField: CustomTextField = {
       let textField = CustomTextField()
        textField.attributedPlaceholder  = NSAttributedString(string: "Password" , attributes: [NSAttributedString.Key.foregroundColor: Colors.whiteOpacity, NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16)])
       textField.font = UIFont(name: "Roboto-Regular", size: 16)
       textField.textColor = UIColor.white
       textField.backgroundColor = UIColor(red: 131/255, green: 87/255, blue: 199/255, alpha: 55)
       textField.isSecureTextEntry = true
       textField.translatesAutoresizingMaskIntoConstraints = false
       return textField
    }()
    
    
    let loginButton: UIButton = {
       let button = UIButton()
        button.setTitle("Login Now", for: .normal)
        button.setTitleColor(UIColor(red: 183/255, green: 148/255, blue: 217/255, alpha: 100), for: .normal)
        button.layer.cornerRadius = 3
        button.titleLabel?.font = UIFont(name: "Roboto-Bold", size: 16)
        button.layer.borderColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.30).cgColor
        button.layer.borderWidth = 1.1
        button.layer.masksToBounds = true
        return button
    }()
    
    let gradientLayer: CAGradientLayer = {
       let gradient = CAGradientLayer()
        gradient.colors = [Colors.loginBgColor.cgColor, Colors.secondBgColor.cgColor]
        gradient.locations = [0.1,0.9]
        gradient.startPoint = CGPoint(x: 0.2, y: 0.0)
        gradient.endPoint = CGPoint(x: 0.5, y: 1.0)
        return gradient
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        gradientLayer.frame = view.bounds
        
        view.layer.insertSublayer(gradientLayer, at: 0)
        
        setupLabels()
        
        
        
    }
    

     func setupLabels(){
        
        // StackView Config
        let arrangedSubviews: [UIView] = [emailField,passwordField, loginButton]
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 17
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(instagramLogo)
        view.addSubview(stackView)
        
        
        // Auto-Layout Anchors
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -30).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: 187).isActive = true
        
        instagramLogo.widthAnchor.constraint(equalToConstant: 200).isActive = true
        instagramLogo.heightAnchor.constraint(equalToConstant: 55).isActive = true
        instagramLogo.bottomAnchor.constraint(equalTo: stackView.topAnchor, constant: -50).isActive = true
        instagramLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
     }
    
   
 }
    


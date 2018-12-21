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
    
    let forgotButton: UIButton = {
       let button = UIButton()
        button.setTitle("Don't you remember your Password?", for: .normal)
        button.setTitleColor(Colors.whiteOpacity, for: .normal)
        button.titleLabel?.font = UIFont(name: "Roboto-Regular", size: 15)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let leftSeperator: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.15)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let optionLabel: UILabel = {
       let label = UILabel()
        label.text = "or"
        label.textColor = Colors.whiteOpacity
        label.font = UIFont(name: "Roboto-Regular", size: 17)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let rightSeperator: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.15)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    let facebookIcon: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "facebook-logo"))
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let facebookLabel: UILabel = {
       let label = UILabel()
        label.text = "Connect with Facebook"
        label.font = UIFont(name: "Roboto-Bold", size: 15)
        label.textColor = UIColor.white
        return label
    }()

    
    let signupButton: UIButton = {
      let button = UIButton()
       let CombinedString = NSMutableAttributedString(string: "Don't you have an account? ", attributes: [NSAttributedString.Key.font
        : UIFont(name: "Roboto-Regular", size: 16), NSAttributedString.Key.foregroundColor: Colors.whiteOpacity])
        
        CombinedString.append(NSAttributedString(string: "Sign Up", attributes: [NSAttributedString.Key.font: UIFont(name: "Roboto-Bold", size: 16), NSAttributedString.Key.foregroundColor: Colors.whiteOpacity]))
        button.setAttributedTitle(CombinedString, for: .normal)
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
        
        view.layer.insertSublayer(gradientLayer, at: 0)
        
        setupLabels()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
         gradientLayer.frame = view.bounds
    }
    

     func setupLabels(){
        
        // StackView Config -- Login Section
        let arrangedSubviews: [UIView] = [emailField,passwordField, loginButton]
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 17
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        //StackView Config -- Below Login Section
        let optionSubviews: [UIView] = [leftSeperator,optionLabel,rightSeperator]
        let optionStackView = UIStackView(arrangedSubviews: optionSubviews)
        optionStackView.alignment = .center
        optionStackView.translatesAutoresizingMaskIntoConstraints = false
        
        // Facebook Connection StackView
        let connectionSubviews: [UIView] = [facebookIcon, facebookLabel]
        let connectionStackView = UIStackView(arrangedSubviews: connectionSubviews)
        connectionStackView.spacing = 9
        connectionStackView.translatesAutoresizingMaskIntoConstraints = false
        
        // StackView Config
        let bottomSubview: [UIView] = [signupButton]
        let bottomStackView = UIStackView(arrangedSubviews: bottomSubview)
        bottomStackView.distribution = .fillProportionally
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        
        // Adding views to hierarchy
        view.addSubview(instagramLogo)
        view.addSubview(stackView)
        view.addSubview(forgotButton)
        view.addSubview(optionStackView)
        view.addSubview(connectionStackView)
        view.addSubview(bottomStackView)
        
    
        // Auto-Layout Anchors
        instagramLogo.widthAnchor.constraint(equalToConstant: 200).isActive = true
        instagramLogo.heightAnchor.constraint(equalToConstant: 55).isActive = true
        instagramLogo.bottomAnchor.constraint(equalTo: stackView.topAnchor, constant: -35).isActive = true
        instagramLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        stackView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        stackView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, constant: -30).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: 187).isActive = true
        
        forgotButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 16).isActive = true
        forgotButton.centerXAnchor.constraint(equalTo: stackView.centerXAnchor).isActive = true
        
        optionStackView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
        optionStackView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor).isActive = true
        optionStackView.topAnchor.constraint(equalTo: forgotButton.bottomAnchor, constant: 25).isActive = true
        optionStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        leftSeperator.widthAnchor.constraint(equalToConstant: 120).isActive = true
        leftSeperator.heightAnchor.constraint(equalToConstant: 2).isActive = true
        rightSeperator.widthAnchor.constraint(equalToConstant: 120).isActive = true
        rightSeperator.heightAnchor.constraint(equalToConstant: 2).isActive = true
        
        connectionStackView.topAnchor.constraint(equalTo: optionStackView.bottomAnchor, constant: 28).isActive = true
        connectionStackView.centerXAnchor.constraint(equalTo: optionStackView.centerXAnchor).isActive = true
        facebookIcon.widthAnchor.constraint(equalToConstant: 25).isActive = true
        facebookIcon.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        
        bottomStackView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor).isActive = true
        bottomStackView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor).isActive = true
        bottomStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -45).isActive = true

     }
    
   
 }
    


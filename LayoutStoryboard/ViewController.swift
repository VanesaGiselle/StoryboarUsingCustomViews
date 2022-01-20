//
//  ViewController.swift
//  LayoutStoryboard
//
//  Created by Vanesa Korbenfeld on 19/01/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var facebookButton: FacebookButton!
    @IBOutlet weak var twitterButton: TwitterButton!
    @IBOutlet weak var emailButton: EmailButton!
    @IBOutlet weak var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        facebookButton.addTarget(self, action: #selector(facebookTappedButton), for: .touchUpInside)
        twitterButton.addTarget(self, action: #selector(twitterTappedButton), for: .touchUpInside)
        emailButton.addTarget(self, action: #selector(emailTappedButton), for: .touchUpInside)
        logInButton.addTarget(self, action: #selector(logInTappedButton), for: .touchUpInside)
        
        let footer = Footer()
        footer.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(footer)
        footer.backgroundColor = UIColor(displayP3Red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.5)
        footer.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        footer.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
    
    @objc func facebookTappedButton() {
        let secondViewController = SecondViewController()
        secondViewController.modalPresentationStyle = .fullScreen
        present(secondViewController, animated: true)

    }
    
    @objc func twitterTappedButton() {
        
    }
    
    @objc func emailTappedButton() {
        
    }
    
    @objc func logInTappedButton() {
        
    }
    
}

class RoundedButton: UIButton {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    func setupView() {
        self.tintColor = .white
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17.0)
        self.layer.cornerRadius = 5
    }
}

class FacebookButton: RoundedButton {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.backgroundColor = .systemBlue
    }
}

class EmailButton: RoundedButton {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.backgroundColor = UIColor(red: 207/255.0, green: 150/255.0, blue: 200/255.0, alpha: 1)
    }
}

class TwitterButton: RoundedButton {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.backgroundColor = UIColor(red: 47/255.0, green: 166/255.0, blue: 242/255.0, alpha: 1)
    }
}

class Footer: UIView {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    init() {
        super.init(frame: .zero)
        setupView()
    }
    
    func setupView() {
        let copyrightLabel = UILabel()
        let termsAndConditionButton = UIButton()
        self.addSubview(copyrightLabel)
        self.addSubview(termsAndConditionButton)
        copyrightLabel.translatesAutoresizingMaskIntoConstraints = false
        termsAndConditionButton.translatesAutoresizingMaskIntoConstraints = false

        copyrightLabel.text = "© Copyright 2022"
        copyrightLabel.textColor = .white
        copyrightLabel.font = UIFont.systemFont(ofSize: 14)
        termsAndConditionButton.setTitle("Terms & Conditions", for: .normal)
        termsAndConditionButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        termsAndConditionButton.titleLabel?.textAlignment = .right
        copyrightLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        copyrightLabel.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant:  -10).isActive = true
        termsAndConditionButton.centerYAnchor.constraint(equalTo: copyrightLabel.centerYAnchor).isActive = true
        copyrightLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        termsAndConditionButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
     
    
    }
}

//
//  ViewController.swift
//  LayoutStoryboard
//
//  Created by Vanesa Korbenfeld on 19/01/2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

class FacebookButton: UIButton {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    func setupView() {
        self.backgroundColor = .systemBlue
        self.tintColor = .white
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17.0)
    }
}

class EmailButton: UIButton {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    func setupView() {
        self.backgroundColor = UIColor(red: 207/255.0, green: 150/255.0, blue: 200/255.0, alpha: 1)
        self.tintColor = .white
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17.0)
    }
}

class TwitterButton: UIButton {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    func setupView() {
        self.backgroundColor = UIColor(red: 47/255.0, green: 166/255.0, blue: 242/255.0, alpha: 1)
        self.tintColor = .white
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17.0)
    }
}

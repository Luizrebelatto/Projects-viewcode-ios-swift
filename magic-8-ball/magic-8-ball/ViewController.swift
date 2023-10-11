//
//  ViewController.swift
//  magic-8-ball
//
//  Created by Luiz Gabriel Rebelatto Bianchi on 10/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    func label() {
        let text = UILabel()
        text.text = "Ask Me Anything..."
        text.textColor = UIColor(named: "TitleColor")
        text.font = UIFont.systemFont(ofSize: 40)
        text.textAlignment = .center
        view.addSubview(text)
        
        text.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            text.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            text.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
        ])
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "Background")
        label()
        // Do any additional setup after loading the view.
    }


}


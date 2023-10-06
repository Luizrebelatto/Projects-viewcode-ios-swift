//  ViewController.swift
//  IAmPoor
//  Created by Luiz Gabriel Rebelatto Bianchi on 05/10/23.

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .brown
        
        let label = UILabel()
        label.text = "I am Poor"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 50)
        label.textAlignment = .center
        
        view.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
                    label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    label.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
                ])
    }
}

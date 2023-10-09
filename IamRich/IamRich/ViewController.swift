//
//  ViewController.swift
//  iamRich
//
//  Created by Luiz Gabriel Rebelatto Bianchi on 06/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    func title() {
        let titleText = UILabel()
        titleText.text = "I Am Rich"
        titleText.textColor = UIColor(named: "colorTitle")
        titleText.font = UIFont.systemFont(ofSize: 40)
        view.addSubview(titleText)
        titleText.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleText.topAnchor.constraint(equalTo: view.topAnchor, constant: 80)
        ])
    }
    
    func image() {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "ImageItem")
        imageView.contentMode = .scaleAspectFit
        
        view.addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 200),
            imageView.heightAnchor.constraint(equalToConstant: 200)
        ])
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(named: "AccentColor")
        title()
        image()
    }
}

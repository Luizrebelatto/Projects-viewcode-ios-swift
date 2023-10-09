//
//  ViewController.swift
//  dicee-sorted
//
//  Created by Luiz Gabriel Rebelatto Bianchi on 09/10/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let imageBackgroud = UIImageView(image: UIImage(named: "DiceBackground"))
        imageBackgroud.frame = view.bounds
        view.addSubview(imageBackgroud)
        // Do any additional setup after loading the view.
    }


}


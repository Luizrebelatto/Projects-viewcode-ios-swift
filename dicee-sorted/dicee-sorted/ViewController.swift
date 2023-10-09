//
//  ViewController.swift
//  dicee-sorted
//
//  Created by Luiz Gabriel Rebelatto Bianchi on 09/10/23.
//

import UIKit

extension UIView {
    func setBackgroundImg(imageName: String){
        let imageBackgroud = UIImageView(image: UIImage(named: imageName))
        imageBackgroud.frame = bounds
        addSubview(imageBackgroud)
    }
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setBackgroundImg(imageName: "DiceBackground")
    }
}


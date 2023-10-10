//
//  ViewController.swift
//  dicee-sorted
//
//  Created by Luiz Gabriel Rebelatto Bianchi on 09/10/23.
//

import UIKit

extension UIView {
    func setBackgroundImg(imageName: String){
        let imageBackground = UIImageView(image: UIImage(named: imageName))
        imageBackground.frame = bounds
        addSubview(imageBackground)
    }
}

class ViewController: UIViewController {
    
    let numbers = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
    
    func imageLogo() {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Dicelogo")
        imageView.contentMode = .scaleAspectFit
            
        view.addSubview(imageView)
            
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            imageView.widthAnchor.constraint(equalToConstant: 200),
            imageView.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    func imageDice(imageName: String, valueConstant: CGFloat) {
        let imageView = UIImageView()
        imageView.image = UIImage(named: imageName)
        imageView.contentMode = .scaleAspectFit
            
        view.addSubview(imageView)
            
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: valueConstant),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 120),
            imageView.heightAnchor.constraint(equalToConstant: 120)
        ])
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setBackgroundImg(imageName: "DiceBackground")
        imageLogo()
        handleSortedDicee()
        imageDice(imageName: "DiceOne", valueConstant: 30)
        imageDice(imageName: "DiceTwo", valueConstant: 240)
    }
    
    private func handleSortedDicee() {
        let button = UIButton(frame: CGRect(x: 150, y: 600, width: 100, height: 50))
        button.backgroundColor = .red
        button.setTitle("Roll", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
        button.addTarget(target, action: #selector(buttonAction), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func buttonAction(sender: UIButton) {
        let elementOne = Int.random(in: 0...5)
        let elementTwo = Int.random(in: 0...5)
        imageDice(imageName: numbers[elementOne], valueConstant: 30)
        imageDice(imageName: numbers[elementTwo], valueConstant: 240)
    }
  
}

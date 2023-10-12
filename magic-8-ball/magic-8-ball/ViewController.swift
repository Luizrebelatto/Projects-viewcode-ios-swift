//
//  ViewController.swift
//  magic-8-ball
//
//  Created by Luiz Gabriel Rebelatto Bianchi on 10/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    let phrases = ["ballOne", "ballTwo", "ballThree", "ballFour", "ballFive"]
    
    func label() {
        let text = UILabel()
        text.text = "Ask Me Anything..."
        text.textColor = UIColor(named: "Color")
        text.font = UIFont.systemFont(ofSize: 40)
        text.textAlignment = .center
        view.addSubview(text)
        
        text.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            text.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            text.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
        ])
    }
    
    func image(imageName: String) {
        let ballImage = UIImageView()
        ballImage.image = UIImage(named: imageName)
        ballImage.contentMode = .scaleAspectFit
        
        view.addSubview(ballImage)
        
        ballImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            ballImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ballImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            ballImage.widthAnchor.constraint(equalToConstant: 250),
            ballImage.heightAnchor.constraint(equalToConstant: 250)
        ])
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "Background")
        label()
       handlePhrase()
    }
    
    private func handlePhrase(){
        let button = UIButton(frame: CGRect(x: 150, y: 600, width: 100, height: 50))
        button.backgroundColor = .white
        button.setTitle("Ask", for: .normal)
        button.setTitleColor(UIColor(named: "TitleColor"), for: .normal)
        button.addTarget(target, action: #selector(buttonAction), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func buttonAction(sender: UIButton) {
        let sortedNumber = Int.random(in: 0...4)
        image(imageName: phrases[sortedNumber])
    }


}

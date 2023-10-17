//
//  ViewController.swift
//  xylophone
//
//  Created by Luiz Gabriel Rebelatto Bianchi on 11/10/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer?
    
    func createButton(label: String, lineX: CGFloat, lineY: CGFloat, width: CGFloat, height: CGFloat, color: String) {
        let button = UIButton(frame: CGRect(x: lineX, y: lineY, width: width, height: height))
        button.backgroundColor = UIColor(named: color)
        button.setTitle(label, for: .normal)
        button.layer.cornerRadius = 10
        button.addTarget(target, action: #selector(playSound), for: .touchDown)
        button.addTarget(target, action: #selector(buttonReleased), for: .touchUpInside)
        view.addSubview(button)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        createButton(label: "C", lineX: 10, lineY: 60, width: 375, height: 90, color: "red")
        createButton(label: "D", lineX: 18, lineY: 160, width: 360, height: 90, color: "orange")
        createButton(label: "E", lineX: 26, lineY: 260, width: 345, height: 90, color: "yellow")
        createButton(label: "F", lineX: 34, lineY: 360, width: 330, height: 90, color: "green")
        createButton(label: "G", lineX: 42, lineY: 460, width: 315, height: 90, color: "purple")
        createButton(label: "A", lineX: 50, lineY: 560, width: 300, height: 90, color: "indigo")
        createButton(label: "B", lineX: 58, lineY: 660, width: 285, height: 90, color: "blue")
    }
    
    @objc func playSound(sender: UIButton) {
           if let soundName = sender.currentTitle, let soundURL = Bundle.main.url(forResource: soundName, withExtension: "wav", subdirectory: "Sounds") {
               do {
                   audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
                   audioPlayer?.prepareToPlay()
                   audioPlayer?.play()
               } catch {
                   print("Error playing audio: \(error.localizedDescription)")
               }
           }
        sender.alpha = 0.5
    }
    
    @objc func buttonReleased(sender: UIButton) {
            sender.alpha = 1.0
    }
   
}

//
//  ViewController.swift
//  Sound Player
//
//  Created by Caio Fernandes on 15/04/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player = AVAudioPlayer()
    
    @IBOutlet weak var playButton: UIButton!
    @IBAction func play(_ sender: Any) {
        if player.isPlaying {
            player.pause()
            playButton.setImage(UIImage(named: "play"), for: .normal)
        } else {
            player.play()
            playButton.setImage(UIImage(named: "pause"), for: .normal)
        }
    }
    
    @IBAction func stop(_ sender: Any) {
        player.stop()
        playButton.setImage(UIImage(named: "play"), for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let path = Bundle.main.path(forResource: "bach", ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            do {
                player = try AVAudioPlayer(contentsOf: url)
                player.prepareToPlay()
            } catch {
                
            }
                
        }
    }


}


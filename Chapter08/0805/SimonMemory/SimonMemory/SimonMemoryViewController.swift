//
//  SimonMemoryViewController.swift
//  SimonMemory
//
//  Created by CoderDream on 2019/4/9.
//  Copyright © 2019 CoderDream. All rights reserved.
//

import UIKit
import AVFoundation

class SimonMemoryViewControlller: UIViewController {    
    
    var gameState: String = String()
    var playListTimer: Timer? = nil
    var guess: Int = 1
    var audioEffect: AVAudioPlayer = AVAudioPlayer()
    
   // @IBOutlet weak var backgroundImageView: UIImageView!
  //  @IBOutlet weak var highlightImageView: UIImageView!
    
    @IBOutlet weak var highlightImageView: UIImageView!
    @IBAction func triggerButtonSound(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.gameState = "Loading"
        self.newGame()
    }
    
    func newGame() {
        self.addAGuess()
    }
    
    func addAGuess() {
        self.gameState = "GameTurn"
        
        // generate random
        let a = arc4random()
        let b = a % 4
        let c = b + 1
        let randEnemy: Int = Int(c)
        //var soundNo: NSNumber = (NSNumber.numberWithInt(Int32(randEnemy)))
        print("randEnemy: \(randEnemy)")
        self.guess = randEnemy
        // create timer
        self.playListTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(playSoundList), userInfo: nil, repeats: false)
    }
    
    @objc func playSoundList() {
        let guessNo: Int = self.guess
        self.playSound(tag: guessNo)
        self.gameState = "Play"
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(hideButtonImage), userInfo: nil, repeats: false)
    }
    
    @objc func hideButtonImage() {
        self.highlightImageView.image = UIImage(named: "empty.png")
      //  self.backgroundImageView.image = UIImage(named: "gameboard.png")
    }
    
    func playSound(tag: Int) {
        var soundName: String = ""
        switch tag {
        case 1:
            soundName = "red"
        case 2:
            soundName = "blue"
        case 3:
            soundName = "yellow"
        case 4:
            soundName = "green"
        default:
            soundName = "error"
        }
        self.highlightImageView.image = UIImage(named: "\(soundName).png")
        self.playSoundEffec(effectName: soundName)
    }
    
    func playSoundEffec(effectName: String) {
        // get path
        let path = Bundle.main.path(forResource: effectName, ofType: "wav")
        let pathURL: URL = URL.init(fileURLWithPath: path!)
        do {
            try self.audioEffect = AVAudioPlayer.init(contentsOf: pathURL)
        }
        catch {
            print("error")
        }
        // instance audioEffect
        audioEffect.numberOfLoops = 0
        audioEffect.prepareToPlay()
        // play audio
        audioEffect.play()
        print("playing: \(effectName)")
    }
}

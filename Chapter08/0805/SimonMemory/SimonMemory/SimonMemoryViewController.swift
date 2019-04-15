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
    var backgroundMusict: AVAudioPlayer? = nil
    // 显示游戏处于的关数
    var roundNumber: Int = 0
    
    @IBOutlet weak var guessLabel: UILabel!
    @IBOutlet weak var highlightImageView: UIImageView!
    @IBAction func triggerButtonSound(_ sender: UIButton) {
        // 判断游戏的状态
        if !self.gameState.elementsEqual("Play") {
            return
        }
        
        // 判断提示颜色代表的数字是否和按钮的 tag 值相同
        if self.guess == sender.tag {
            // 相同的情况
            self.playSound(tag: sender.tag)
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(hideButtonImage), userInfo: nil, repeats: false)
            self.roundNumber += 1
            self.addAGuess()
        }
        else {
            // 不同的情况
            let title = "对不起，你的颜色序列有误"
            let message = "是否重新开始游戏"
            let alertController = UIAlertController(title: title,
                                                    message: message,
                                                    preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "否", style: .cancel, handler: nil)
            let okAction = UIAlertAction(title: "是", style: .default, handler: { action in
                print("点击了是")
                self.playSound(tag: -1)
                self.newGame()
            })
            alertController.addAction(cancelAction)
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.gameState = "Loading"
        self.newGame()
    }
    
    func newGame() {
        self.roundNumber = 1
        self.addAGuess()
        self.playMusic(musicName: "music")
    }
    
    func playMusic(musicName: String) {
        // 判断 backgroundMusic 对象是否为空
        if self.backgroundMusict == nil {
            // get path
            let musicFile: URL = Bundle.main.url(forResource: musicName, withExtension: "mp3")!
            do {
                try self.backgroundMusict = AVAudioPlayer.init(contentsOf: musicFile)
            }
            catch {
                print("error")
            }
            // instance audioEffect
            self.backgroundMusict?.prepareToPlay()
            self.backgroundMusict?.numberOfLoops = -1
            self.backgroundMusict?.volume = 0.25
            // play audio
            self.backgroundMusict?.play()
            print("playing: \(musicName)")
        }
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
        self.guessLabel.text = "\(self.roundNumber)"
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

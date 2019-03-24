//
//  Game.swift
//  MatchingGame
//
//  Created by CoderDream on 2019/3/23.
//  Copyright © 2019 CoderDream. All rights reserved.
//
import UIKit
import Foundation

class GameSceneViewController: UIViewController {
    
    var blankTileImage: UIImage = UIImage(named: "back.png")!
    var backTileImage: UIImage = UIImage(named: "blank.png")!
    
    @IBOutlet weak var gameScoreLabel: UILabel!
    
    var matchCounter: UInt32 = 0
    var guessCounter: UInt32 = 0
    
    var tiles:NSMutableArray = NSMutableArray(objects:
        UIImage(named: "icons01.png")!,
        UIImage(named: "icons01.png")!,
        UIImage(named: "icons02.png")!,
        UIImage(named: "icons02.png")!,
        UIImage(named: "icons03.png")!,
        UIImage(named: "icons03.png")!,
        UIImage(named: "icons04.png")!,
        UIImage(named: "icons04.png")!,
        UIImage(named: "icons05.png")!,
        UIImage(named: "icons05.png")!,
        UIImage(named: "icons06.png")!,
        UIImage(named: "icons06.png")!,
        UIImage(named: "icons07.png")!,
        UIImage(named: "icons07.png")!,
        UIImage(named: "icons08.png")!,
        UIImage(named: "icons08.png")!,
        UIImage(named: "icons09.png")!,
        UIImage(named: "icons09.png")!,
        UIImage(named: "icons10.png")!,
        UIImage(named: "icons10.png")!,
        UIImage(named: "icons11.png")!,
        UIImage(named: "icons11.png")!,
        UIImage(named: "icons12.png")!,
        UIImage(named: "icons12.png")!,
        UIImage(named: "icons13.png")!,
        UIImage(named: "icons13.png")!,
        UIImage(named: "icons14.png")!,
        UIImage(named: "icons14.png")!,
        UIImage(named: "icons15.png")!,
        UIImage(named: "icons15.png")!)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var isDisabled = false
    var tileFlipped: NSInteger = 0
    var tile1: UIButton = UIButton()
    var tile2: UIButton = UIButton()
    
    // 两个卡牌是否相等
    var isMatch = false
    
    @IBAction func tileClick(_ sender: UIButton) {
        // 获取轻拍按钮的 tag
        let senderID: Int =  sender.tag
        print("senderID: \(senderID)， isDisable: \(self.isDisabled)")
        
        // 判断轻拍的按钮是否禁用
        if isDisabled {
            return
        }
        
        
        // 判断翻转按钮的 tag 值是否大于 0 ， 并且和当前轻拍按钮的 tag 值是否相等
        if self.tileFlipped >= 0 && senderID != self.tileFlipped {
            // 翻转第二个卡牌
            self.tile2 = sender
            let lastImage: UIImage = self.tiles.object(at: self.tileFlipped) as! UIImage
            let tileImage: UIImage = self.tiles.object(at: senderID) as! UIImage
            
            sender.setImage(tileImage, for: UIControl.State.normal)
            
            // 禁用轻拍的卡牌
            isDisabled = true
            
            if tileImage == lastImage {
                print("Match")
                // 将两个按钮设置为不可用状态
                self.tile1.isEnabled = false
                self.tile2.isEnabled = false
                isMatch = true
                self.matchCounter += 1
            }
            
            Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(GameSceneViewController.resetTiles), userInfo: nil, repeats: false)

            
            // 将翻转的按钮设置为 -1 ， 表示没有进行翻转的卡牌
            self.tileFlipped = -1
        } else {
            // 翻转第一个卡牌
            self.tileFlipped = senderID
            self.tile1 = sender
            let tileImage: UIImage = self.tiles.object(at: senderID) as! UIImage
            sender.setImage(tileImage, for: UIControl.State.normal)
        }
    }
    
    @objc func resetTiles() {
        // 判定是否匹配
        if isMatch {
            // 设置两个按钮的图像
            self.tile1.setImage(self.backTileImage, for: UIControl.State.normal)
            self.tile2.setImage(self.backTileImage, for: UIControl.State.normal)
        } else {
            self.tile1.setImage(self.blankTileImage, for: UIControl.State.normal)
            self.tile2.setImage(self.blankTileImage, for: UIControl.State.normal)
        }
        
        isDisabled = false
        isMatch = false
        
        if self.matchCounter == self.tiles.count / 2 {
            self.winner()
        }
    }
    
    func winner() {
        self.gameScoreLabel.text = "You won with \(self.guessCounter) Guesses"
    }
}

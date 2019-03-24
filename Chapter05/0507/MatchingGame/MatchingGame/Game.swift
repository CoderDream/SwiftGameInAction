//
//  Game.swift
//  MatchingGame
//
//  Created by CoderDream on 2019/3/23.
//  Copyright © 2019 CoderDream. All rights reserved.
//
import UIKit
import Foundation

var score: NSMutableArray = NSMutableArray()

class GameSceneViewController: UIViewController {
    
    var blankTileImage: UIImage = UIImage(named: "back.png")!
    var backTileImage: UIImage = UIImage(named: "blank.png")!
    
    @IBOutlet weak var gameScoreLabel: UILabel!
    
    var matchCounter: UInt32 = 0
    // 猜测次数
    var guessCounter: UInt32 = 0
    
    var shuffledTiles: NSMutableArray=NSMutableArray()
    
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
        self.gameScoreLabel.text = "Matches: \(self.matchCounter) ,Guesses: \(self.guessCounter)"
        // 增加难度
        // self.shuffleTiles()
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
            self.guessCounter += 1
            
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
        
        self.gameScoreLabel.text = "Matches: \(self.matchCounter) ,Guesses: \(self.guessCounter)"
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
        let title = "游戏已完成"
        let message = "是否保存猜测数字"
//        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
//        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
//        alert.addAction(okAction)
//        self.present(alert, animated: true, completion: nil)
        // [Swift - 告警提示框（UIAlertController）的用法](https://blog.csdn.net/heye644171300/article/details/78407143)
        let alertController = UIAlertController(title: title,
                                                message: message, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        let okAction = UIAlertAction(title: "好的", style: .default, handler: {
            action in
            print("点击了确定")
            score.add(self.gameScoreLabel.text!)
        })
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
//    func alertView(_alertView: UIAlertController,
//                   clickedButtonAtIndex buttonIndex: Int){
//        let name: String = _alertView.title! //. (at: buttonIndex)! as NSString) as String
//        if name.isEqual("是") {
//
//            print("# 是 ##\(name)")
//            score.add(self.gameScoreLabel.text!)
//        } else {
//            print("###\(name)")
//        }
//    }
    
    func shuffleTiles() {
        let tileCount:Int = tiles.count
        for tileID in 0 ..< tileCount/2 {
            self.shuffledTiles.add(Int32(tileID))
            self.shuffledTiles.add(Int32(tileID))
        }

        for i in 0 ..< UInt32(tileCount) {
            let nElements: UInt32  = UInt32(tileCount)
            let temp = nElements - i

            let a = arc4random()
            let b = a % temp
            let n = b + i

            // 交换对象
            self.shuffledTiles.exchangeObject(at: Int(i), withObjectAt: Int(n))
            self.tiles.exchangeObject(at: Int(i), withObjectAt: Int(n))
        }
    }

}

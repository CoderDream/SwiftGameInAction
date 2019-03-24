//
//  Game.swift
//  MatchingGame
//
//  Created by CoderDream on 2019/3/23.
//  Copyright © 2019 CoderDream. All rights reserved.
//

import Foundation
import UIKit
var score:NSMutableArray=NSMutableArray()
class GameSceneViewController: UIViewController {
    var blankTileImage: UIImage = UIImage(named: "back.png")!
    var backTileImage: UIImage = UIImage(named: "blank.png")!
    
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
    
//    @IBOutlet weak var gameScoreLabel: UILabel!
//    var shuffledTiles: NSMutableArray=NSMutableArray()
//    var matchCounter: NSInteger=0
//    var guessCounter: NSInteger=0
//    var tileFlipped: NSInteger=0
//    var tile1:UIButton = UIButton()
//    var tile2:UIButton = UIButton()
//    var isDisabled = false
//    var isMatch = false

    
    @IBAction func tileClick(_ sender: UIButton) {
        // 判断轻拍的按钮是否禁用
//        if isDisabled {
//            return
//        }
        let senderID: Int =  sender.tag
        
        let tileImage: UIImage = self.tiles.object(at: senderID) as! UIImage
        
        sender.setImage(tileImage, for: UIControl.State.normal)
        
        // 判断翻转按钮的 tag 值是否大于 0 ， 并且和当前轻拍按钮的 tag 值是否相等
//        if self.tileFlipped >= 0 && senderID != self.tileFlipped {
//            // 翻转第二个卡牌
//            self.tile2 = sender
//            let lastImage: UIImage = self.tiles.object(at: self.tileFlipped) as! UIImage
//            let tileImage: UIImage = self.tiles.object(at: senderID) as! UIImage
//
//            sender.setImage(tileImage, for: UIControl.State.normal)
//            self.guessCounter += 1
//            if tileImage == lastImage {
//                self.tile1.isEnabled = false
//                self.tile2.isEnabled = false
//                self.matchCounter += 1
//                isMatch = true
//            }
//            // 禁用轻拍的卡牌
//            isDisabled = true
//            Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(GameSceneViewController.resetTiles), userInfo: nil, repeats: false)
//            // 将翻转的按钮设置为 -1 ， 表示没有进行翻转的卡牌
//            self.tileFlipped = -1
//        } else {
//            // 翻转第一个卡牌
//            self.tileFlipped = senderID
//            self.tile1 = sender
//            let tileImage:UIImage = self.tiles.object(at: senderID) as! UIImage
//            sender.setImage(tileImage, for: UIControl.State.normal)
//        }
//        gameScoreLabel.text = "Matches: \(self.matchCounter),Guesses: \(self.guessCounter)"
    }
    
//    @objc func resetTiles(){
//        if isMatch {
//            self.tile1.setImage(self.backTileImage, for: UIControl.State.normal)
//            self.tile2.setImage(self.backTileImage, for: UIControl.State.normal)
//        }
//        else{
//            self.tile1.setImage(self.blankTileImage, for: UIControl.State.normal)
//            self.tile2.setImage(self.blankTileImage, for: UIControl.State.normal)
//        }
//
//        isDisabled = false
//        isMatch = false
//        if self.matchCounter == (self.tiles.count/2) {
//            self.winner()
//        }
//    }
//
//    @objc func winner(){
//        self.gameScoreLabel.text="You won with \(self.guessCounter) Guesses";
//
////        let alert = UIAlertView(title: "游戏已完成", message: "是否保存猜测数字", delegate:self ,cancelButtonTitle: "否")
////        alert.addButton(withTitle: "是")
////        alert.show()
//        let title = "游戏已完成"
//        let message = "是否保存猜测数字"
//        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
//        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
//        alert.addAction(okAction)
//        self.present(alert, animated: true, completion: nil)
//
//    }
//
//    func alertView(_alertView: UIAlertController,
//                   clickedButtonAtIndex buttonIndex: Int){
//        let name: String = _alertView.title! //. (at: buttonIndex)! as NSString) as String
//        if name.isEqual("是") {
//            score.add(self.gameScoreLabel.text!)
//        } else {
//            print("###\(name)")
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //gameScoreLabel.text="Matches: \(self.matchCounter),Guesses: \(self.guessCounter)"
        //self.shuffleTiles()
    }
    
//    func shuffleTiles(){
//        let tileCount:Int = tiles.count
//        for tileID in 0 ..< tileCount/2 {
//            self.shuffledTiles.add(Int32(tileID))
//            self.shuffledTiles.add(Int32(tileID))
//        }
//
//        for i in 0 ..< UInt32(tileCount) {
//            let nElements: UInt32  = UInt32(tileCount)
//            let temp = nElements - i
//
//            let a = arc4random()
//            let b = a % temp
//            let n = b + i
//
//            self.shuffledTiles.exchangeObject(at: Int(i), withObjectAt: Int(n))
//            self.tiles.exchangeObject(at: Int(i), withObjectAt: Int(n))
//        }
//    }
}

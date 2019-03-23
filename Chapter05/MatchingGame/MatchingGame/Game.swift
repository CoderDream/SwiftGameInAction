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
    var blankTileImage:UIImage=UIImage(named: "back.png")!
    var backTileImage:UIImage=UIImage(named: "blank.png")!
    
    var tiles:NSMutableArray=NSMutableArray(objects:
        UIImage(named: "icons01.png"),
                                            UIImage(named: "icons01.png"),
                                            UIImage(named: "icons02.png"),
                                            UIImage(named: "icons02.png"),
                                            UIImage(named: "icons03.png"),
                                            UIImage(named: "icons03.png"),
                                            UIImage(named: "icons04.png"),
                                            UIImage(named: "icons04.png"),
                                            UIImage(named: "icons05.png"),
                                            UIImage(named: "icons05.png"),
                                            UIImage(named: "icons06.png"),
                                            UIImage(named: "icons06.png"),
                                            UIImage(named: "icons07.png"),
                                            UIImage(named: "icons07.png"),
                                            UIImage(named: "icons08.png"),
                                            UIImage(named: "icons08.png"),
                                            UIImage(named: "icons09.png"),
                                            UIImage(named: "icons09.png"),
                                            UIImage(named: "icons10.png"),
                                            UIImage(named: "icons10.png"),
                                            UIImage(named: "icons11.png"),
                                            UIImage(named: "icons11.png"),
                                            UIImage(named: "icons12.png"),
                                            UIImage(named: "icons12.png"),
                                            UIImage(named: "icons13.png"),
                                            UIImage(named: "icons13.png"),
                                            UIImage(named: "icons14.png"),
                                            UIImage(named: "icons14.png"),
                                            UIImage(named: "icons15.png"),
                                            UIImage(named: "icons15.png"))
    @IBOutlet weak var gameScoreLabel: UILabel!
    var shuffledTiles:NSMutableArray=NSMutableArray()
    var matchCounter:NSInteger=0
    var guessCounter:NSInteger=0
    var tileFlipped:NSInteger=0
    var tile1:UIButton=UIButton()
    var tile2:UIButton=UIButton()
    var isDisabled=false
    var isMatch=false
    
    
    @IBAction func tileClicked(sender: AnyObject) {
        if(isDisabled==true){
            return
        }
        var senderID:Int=sender.tag;
        if(self.tileFlipped>=0&&senderID != self.tileFlipped){
            self.tile2=sender as! UIButton
            var lastImage:UIImage=self.tiles.object(at: self.tileFlipped) as! UIImage
            var tileImage:UIImage=self.tiles.object(at: senderID) as! UIImage
            
            sender.setImage(tileImage, forState: UIControl.State.Normal)
            self.guessCounter += 1
            if(tileImage==lastImage){
                self.tile1.isEnabled=false
                self.tile2.isEnabled=false
                self.matchCounter += 1
                isMatch=true
            }
            isDisabled=true
            Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: Selector("resetTiles"), userInfo: nil, repeats: false)
            self.tileFlipped = -1
        }else{
            self.tileFlipped=senderID
            
            self.tile1=sender as! UIButton
            
            var tileImage:UIImage=self.tiles.object(at: senderID) as! UIImage
            
            sender.setImage(tileImage, forState: UIControl.State.Normal)
            
        }
        gameScoreLabel.text="Matches: \(self.matchCounter),Guesses: \(self.guessCounter)"
    }
    
    func resetTiles(){
        
        if(isMatch){
            
            self.tile1.setImage(self.backTileImage, forState: UIControl.State.Normal)
            self.tile2.setImage(self.backTileImage, forState: UIControl.State.Normal)
        }else{
            
            self.tile1.setImage(self.blankTileImage, forState: UIControl.State.Normal)
            self.tile2.setImage(self.blankTileImage, forState: UIControl.State.Normal)
            
        }
        
        isDisabled=false
        isMatch=false
        if(self.matchCounter==(self.tiles.count/2)){
            self.winner()
        }
        
    }
    func winner(){
        self.gameScoreLabel.text="You won with \(self.guessCounter) Guesses";
        
        var alert=UIAlertView(title: "游戏已完成",message: "是否保存猜测数字",delegate:self ,cancelButtonTitle: "否")
        alert.addButton(withTitle: "是")
        alert.show()
        
        
    }
    
    func alertView(_alertView: UIAlertView,
                   clickedButtonAtIndex buttonIndex: Int){
        var name:NSString=_alertView.buttonTitle(at: buttonIndex) as! NSString
        if(name.isEqual(to: "是")){
            score.add(self.gameScoreLabel.text!)
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gameScoreLabel.text="Matches: \(self.matchCounter),Guesses: \(self.guessCounter)"
        self.shuffleTiles()
        
        
    }
    
    func shuffleTiles(){
        let tileCount:Int = tiles.count
        for tileID in 0 ..< tileCount/2 {
            self.shuffledTiles.add(Int32(tileID))
            self.shuffledTiles.add(Int32(tileID))
        }
        
        for i in 0 ..< UInt32(tileCount) {
            let nElements: NSInteger = UInt32(tileCount) - i
            
            var a = arc4random()
            var b = a%UInt32(nElements)
            var n = b+i
            self.shuffledTiles.exchangeObject(at: Int(i), withObjectAt: Int(n))
            self.tiles.exchangeObject(at: Int(i), withObjectAt: Int(n))
        }
    }
}

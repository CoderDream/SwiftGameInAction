//
//  SimonGameViewController.swift
//  Simon Memory Game
//
//  Created by Mac on 14-10-16.
//  Copyright (c) 2014年 Mac. All rights reserved.
//


import UIKit
import AVFoundation
class SimonGameViewController:UIViewController,AVAudioPlayerDelegate {
    var gameState:NSString=NSString()
    var audioEffect:AVAudioPlayer=AVAudioPlayer()
    var currentSoundNo:Int?=nil
    var guessNumber:Int?=nil
    var roundNumber:Int=0
    var guessList:NSMutableArray=NSMutableArray()
    var playListTimer:NSTimer?=nil
    var backgroundMusict:AVAudioPlayer?=nil
    @IBOutlet weak var highlightImageView: UIImageView!
    @IBOutlet weak var guessLabel: UILabel!
    override func viewDidLoad() {
        self.gameState="Loading"
        self.newGame()
        
    }
    func newGame(){
        self.roundNumber=1
        guessNumber=0
        self.guessList.removeAllObjects()
        self.addAGuess()
        self.playMusic("music")
        
    }
    //添加背景音乐
    func playMusic(musicName:NSString){
        if(backgroundMusict==nil){
            var musicFile:NSURL=NSBundle.mainBundle().URLForResource(musicName, withExtension: "mp3")!
            backgroundMusict=AVAudioPlayer(contentsOfURL: musicFile,error: nil)
            backgroundMusict?.prepareToPlay()
            backgroundMusict?.numberOfLoops = -1
            backgroundMusict?.volume=0.25
            backgroundMusict?.play()
            
            
            
        }
        
    }
    
    func addAGuess(){
        self.gameState="GameTurn"
        currentSoundNo=0
        guessNumber=0
        var a=arc4random()
        var b=a%4
        var c=b+1
        var randEnemy:Int32=Int32(c)
        //var soundNo:NSNumber=NSNumber.numberWithInt(randEnemy)
        var soundNo:NSNumber=NSNumber(int: randEnemy)
        self.guessList.addObject(soundNo)
        self.guessLabel.text="\(self.roundNumber)"
        self.playListTimer=NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("playSoundList"), userInfo: nil, repeats: false)
        
        
        
    }
    //添加声音列表
    func playSoundList(){
        var guessNo: NSNumber=self.guessList[currentSoundNo!] as NSNumber

        self.playSound(guessNo.integerValue)
        currentSoundNo!++
        if(currentSoundNo<self.guessList.count){
            self.playListTimer=NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("playSoundList"), userInfo: nil, repeats: false)

            
        }else{
            self.gameState="Play"
            NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: Selector("hideButtonImage"), userInfo: nil, repeats: false)
        }
        
        
    }
    //播放声音
    func playSound(tag:Int){
        var soundName:NSString=""
        switch(tag){
            case 1:
                soundName="red"
            case 2:
                soundName="blue"
            case 3:
                soundName="yellow"
            case 4:
                soundName="green"
            default:
                soundName="error"
            
        }
        self.highlightImageView.image=UIImage(named: "\(soundName).png")
        self.playSoundEffect(soundName)
       
        
    }
    //播放声音播放效果
    func playSoundEffect(effectName:NSString){
        var path=NSBundle.mainBundle().pathForResource(effectName, ofType: "wav")
        var pathURL:NSURL=NSURL.fileURLWithPath(path!)!
        audioEffect=AVAudioPlayer(contentsOfURL: pathURL,error: nil)
        audioEffect.numberOfLoops=0
        audioEffect.prepareToPlay()
        audioEffect.play()
        
    }
    //实现轻拍检测
    @IBAction func triggerButtonSound(sender: AnyObject) {
        if(!(self.gameState.isEqualToString("Play"))){
            return
        }
        if(self.guessList[guessNumber!].integerValue==sender.tag){
            self.playSound(sender.tag)
            NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: Selector("hideButtonImage"), userInfo: nil, repeats: false)
            guessNumber!++
            if(guessNumber==self.roundNumber){
                self.roundNumber++
                self.addAGuess()
                
            }
            
        }else{
            var alert=UIAlertView()
            alert.title="对不起，你的颜色序列有误"
            alert.message="是否重新开始游戏"
            alert.addButtonWithTitle("是")
            alert.addButtonWithTitle("否")
            alert.show()
            alert.delegate=self
            self.roundNumber=0
            self.playSound(-1)
            
            
        }
    }
    func alertView(_alertView: UIAlertView,
        clickedButtonAtIndex buttonIndex: Int){
            var name:NSString=_alertView.buttonTitleAtIndex(buttonIndex)
            //判断当前轻拍的按钮是否为”是”
            if(name.isEqualToString("是")){
                self.newGame()
                
            }
    }

    func hideButtonImage(){
        
        self.highlightImageView.image=UIImage(named:"empty.png")
    }
}
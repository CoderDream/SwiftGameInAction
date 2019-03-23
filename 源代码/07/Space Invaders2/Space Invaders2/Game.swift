//
//  Game.swift
//  Space Invaders2
//
//  Created by Mac on 14-10-14.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import Foundation
import UIkit
var score:NSMutableArray=NSMutableArray()
var time:NSMutableArray=NSMutableArray()


class GameViewController: UIViewController {
    var j:Int=0
   
    var playerView:UIView=UIView()
    var moveTimer:NSTimer?=NSTimer()
    var collisionTimer:NSTimer?=NSTimer()
    var playerOne:PlayerObject=PlayerObject()
    var enemies:Enemy=Enemy()
    var back:UIViewController=UIViewController()
    var cvc:UIViewController=UIViewController()
    
    @IBOutlet weak var scoreLabel: UILabel!
    enum GAME_STATE:Int{
        
        case INITIALIZING=1
        case PLAYING=2
        case RELOADING=3
        case ENDING=4
    }
    var currentState=GAME_STATE.INITIALIZING
    var loadingView:UIImageView=UIImageView()
    
    
    @IBAction func moveLeft(sender: AnyObject) {
        self.releaseTouch()
        if(self.currentState != .PLAYING){
            return
        }
        moveTimer=NSTimer.scheduledTimerWithTimeInterval(0.03, target: self.playerOne, selector: Selector("movePlayerLeft"), userInfo: nil, repeats: true)

        
    }


    @IBAction func fireButton(sender: AnyObject) {
        if(self.currentState != .PLAYING){
            return
        }
        self.playerOne.fireBullet()
      
    }
    
    
    @IBAction func moveRight(sender: AnyObject) {
        self.releaseTouch()
        if(self.currentState != .PLAYING){
            return
        }
        moveTimer=NSTimer.scheduledTimerWithTimeInterval(0.03, target: self.playerOne, selector: Selector("movePlayerRight"), userInfo: nil, repeats: true)

    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.changeState(.INITIALIZING)
        
        
        
    }
    func changeState(newState:GAME_STATE){
        self.currentState=newState
        switch(newState){
            case .INITIALIZING:
                self.loadingScreen()

            case .PLAYING:
                break
            case .RELOADING:
                self.view.addSubview(self.loadingView)
                self.enemies.stopTimers()
                self.collisionTimer?.invalidate()
                self.collisionTimer=nil

            case .ENDING:
                break
            default:
                var alert=UIAlertView()
                alert.title="Integer out of range"
                alert.addButtonWithTitle("Cancel")
                alert.show()

        }
       
    }
    func loadingScreen(){
        
        
        playerOne=PlayerObject().initPlayer(self.view)
        self.playerView=self.playerOne.getPlayerView()
        
        self.enemies.initEnemies(self.view)
        self.loadingView.image=UIImage(named: "loading.png")
        self.loadingView.frame=self.view.frame
        self.view.addSubview(self.loadingView)
        NSTimer.scheduledTimerWithTimeInterval(2, target: self, selector: Selector("closeScreen"), userInfo: nil, repeats: false)
        
        
        
        
    }
    func closeScreen(){
        self.loadingView.removeFromSuperview()
        self.changeState(.PLAYING)
        self.enemies.startTimers()
        self.collisionTimer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("intersectCheck"), userInfo: nil, repeats: true)
    }
    func endScreen(){
        var alert:UIAlertView=UIAlertView()
        alert.title="游戏结束"
        alert.message="是否保存分数"
        alert.addButtonWithTitle("是")
        alert.addButtonWithTitle("否")
        alert.delegate=self
        alert.show()
        self.loadingView.removeFromSuperview()
        self.changeState(.ENDING)
        back=self.storyboard!.instantiateViewControllerWithIdentifier("back") as UIViewController
        self.view.addSubview(back.view)
    }
    func alertView(_alertView: UIAlertView,
        clickedButtonAtIndex buttonIndex: Int){
            var name:NSString=_alertView.buttonTitleAtIndex(buttonIndex)
            if(name.isEqualToString("是")){
                score.addObject(j)
                var dateFormatter:NSDateFormatter=NSDateFormatter()
                dateFormatter.dateFormat="yy//MM//dd HH:mm:ss"
                var d:NSDate=NSDate()
                var date:NSString=dateFormatter.stringFromDate(d)
                time.addObject(date)
            }
    }

 
    func intersectCheck(){
       var isConnecting:Bool=CGRectIntersectsRect(self.enemies.enemiesBullet!.bombRect, self.playerOne.playerRect);
        
  
      if(isConnecting==true){
            NSTimer.scheduledTimerWithTimeInterval(2, target: self, selector: Selector("endScreen"), userInfo: nil, repeats: false)
            self.changeState(.RELOADING)
            

        }
        var isConnecting0:Bool=CGRectIntersectsRect(self.enemies.enemyList[0].frame, self.playerOne.playerBullet.bulletRect);
        var isConnecting1:Bool=CGRectIntersectsRect(self.enemies.enemyList[1].frame, self.playerOne.playerBullet.bulletRect);
        var isConnecting2:Bool=CGRectIntersectsRect(self.enemies.enemyList[2].frame, self.playerOne.playerBullet.bulletRect);
        var isConnecting3:Bool=CGRectIntersectsRect(self.enemies.enemyList[3].frame, self.playerOne.playerBullet.bulletRect);
        var isConnecting4:Bool=CGRectIntersectsRect(self.enemies.enemyList[4].frame, self.playerOne.playerBullet.bulletRect);
        var isConnecting5:Bool=CGRectIntersectsRect(self.enemies.enemyList[5].frame, self.playerOne.playerBullet.bulletRect);
        var isConnecting6:Bool=CGRectIntersectsRect(self.enemies.enemyList[6].frame, self.playerOne.playerBullet.bulletRect);
        var isConnecting7:Bool=CGRectIntersectsRect(self.enemies.enemyList[7].frame, self.playerOne.playerBullet.bulletRect);
        var isConnecting8:Bool=CGRectIntersectsRect(self.enemies.enemyList[8].frame, self.playerOne.playerBullet.bulletRect);
        var isConnecting9:Bool=CGRectIntersectsRect(self.enemies.enemyList[9].frame, self.playerOne.playerBullet.bulletRect);
        var isConnecting10:Bool=CGRectIntersectsRect(self.enemies.enemyList[10].frame, self.playerOne.playerBullet.bulletRect);
        var isConnecting11:Bool=CGRectIntersectsRect(self.enemies.enemyList[11].frame, self.playerOne.playerBullet.bulletRect);
        var isConnecting12:Bool=CGRectIntersectsRect(self.enemies.enemyList[12].frame, self.playerOne.playerBullet.bulletRect);
        var isConnecting13:Bool=CGRectIntersectsRect(self.enemies.enemyList[13].frame, self.playerOne.playerBullet.bulletRect);
        var isConnecting14:Bool=CGRectIntersectsRect(self.enemies.enemyList[14].frame, self.playerOne.playerBullet.bulletRect);
        var isConnecting15:Bool=CGRectIntersectsRect(self.enemies.enemyList[15].frame, self.playerOne.playerBullet.bulletRect);
        var isConnecting16:Bool=CGRectIntersectsRect(self.enemies.enemyList[16].frame, self.playerOne.playerBullet.bulletRect);
        var isConnecting17:Bool=CGRectIntersectsRect(self.enemies.enemyList[17].frame, self.playerOne.playerBullet.bulletRect);
        var isConnecting18:Bool=CGRectIntersectsRect(self.enemies.enemyList[18].frame, self.playerOne.playerBullet.bulletRect);
        var isConnecting19:Bool=CGRectIntersectsRect(self.enemies.enemyList[19].frame, self.playerOne.playerBullet.bulletRect);
        var isConnecting20:Bool=CGRectIntersectsRect(self.enemies.enemyList[20].frame, self.playerOne.playerBullet.bulletRect);
        var isConnecting21:Bool=CGRectIntersectsRect(self.enemies.enemyList[21].frame, self.playerOne.playerBullet.bulletRect);
        var isConnecting22:Bool=CGRectIntersectsRect(self.enemies.enemyList[22].frame, self.playerOne.playerBullet.bulletRect);
        var isConnecting23:Bool=CGRectIntersectsRect(self.enemies.enemyList[23].frame, self.playerOne.playerBullet.bulletRect);
        var isConnecting24:Bool=CGRectIntersectsRect(self.enemies.enemyList[24].frame, self.playerOne.playerBullet.bulletRect);

        
        if(isConnecting0==true){
            NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("hiden0"), userInfo: nil, repeats: false)
        }
        if(isConnecting1==true){
            NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("hiden1"), userInfo: nil, repeats: false)
        }
        if(isConnecting2==true){
            NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("hiden2"), userInfo: nil, repeats: false)
        }
        if(isConnecting3==true){
            NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("hiden3"), userInfo: nil, repeats: false)
        }
        if(isConnecting4==true){
            NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("hiden4"), userInfo: nil, repeats: false)
        }
        if(isConnecting5==true){
            NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("hiden5"), userInfo: nil, repeats: false)
        }
        if(isConnecting6==true){
            NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("hiden6"), userInfo: nil, repeats: false)
        }
        if(isConnecting7==true){
            NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("hiden7"), userInfo: nil, repeats: false)
        }
        if(isConnecting8==true){
            NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("hiden8"), userInfo: nil, repeats: false)
        }
        if(isConnecting9==true){
            NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("hiden9"), userInfo: nil, repeats: false)
        }
        if(isConnecting10==true){
            NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("hiden10"), userInfo: nil, repeats: false)
        }
        if(isConnecting11==true){
            NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("hiden11"), userInfo: nil, repeats: false)
        }
        if(isConnecting12==true){
            NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("hiden12"), userInfo: nil, repeats: false)
        }
        if(isConnecting13==true){
            NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("hiden13"), userInfo: nil, repeats: false)
        }
        if(isConnecting14==true){
            NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("hiden14"), userInfo: nil, repeats: false)
        }
        if(isConnecting15==true){
            NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("hiden15"), userInfo: nil, repeats: false)
        }
        if(isConnecting16==true){
            NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("hiden16"), userInfo: nil, repeats: false)
        }
        if(isConnecting17==true){
            NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("hiden17"), userInfo: nil, repeats: false)
        }
        if(isConnecting18==true){
            NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("hiden18"), userInfo: nil, repeats: false)
        }
        if(isConnecting19==true){
            NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("hiden19"), userInfo: nil, repeats: false)
        }
        if(isConnecting20==true){
            NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("hiden20"), userInfo: nil, repeats: false)
        }
        if(isConnecting21==true){
            NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("hiden21"), userInfo: nil, repeats: false)
        }
        if(isConnecting22==true){
            NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("hiden22"), userInfo: nil, repeats: false)
        }
        if(isConnecting23==true){
            NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("hiden23"), userInfo: nil, repeats: false)
        }
        if(isConnecting24==true){
            NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("hiden24"), userInfo: nil, repeats: false)
        }









        
        
        
    }
    func hiden0(){

        var image=self.enemies.gameView.viewWithTag(1)
        if(image?.hidden==false){
            image?.hidden=true
            self.playerOne.playerBullet.remove()
            j=j+10
            scoreLabel.text="\(j)"
             NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("complete"), userInfo: nil, repeats: false)
        }
       

    }
    func hiden1(){
        var image=self.enemies.gameView.viewWithTag(2)
        if(image?.hidden==false){
            image?.hidden=true
            self.playerOne.playerBullet.remove()
            j=j+10
            scoreLabel.text="\(j)"
             NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("complete"), userInfo: nil, repeats: false)
        }

        
    }
    func hiden2(){
        var image=self.enemies.gameView.viewWithTag(3)
        if(image?.hidden==false){
            image?.hidden=true
            self.playerOne.playerBullet.remove()
            j=j+10
            
            scoreLabel.text="\(j)"
             NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("complete"), userInfo: nil, repeats: false)
        }

 
        
        
        
        
        
        
    }
    func hiden3(){
        var image=self.enemies.gameView.viewWithTag(4)
        if(image?.hidden==false){
            image?.hidden=true
            self.playerOne.playerBullet.remove()
            j=j+10
            scoreLabel.text="\(j)"
             NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("complete"), userInfo: nil, repeats: false)
        }
    }
    func hiden4(){
        var image=self.enemies.gameView.viewWithTag(5)
        if(image?.hidden==false){
            image?.hidden=true
            self.playerOne.playerBullet.remove()
            j=j+10
            scoreLabel.text="\(j)"
             NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("complete"), userInfo: nil, repeats: false)
        }
        
    }
    func hiden5(){
        var image=self.enemies.gameView.viewWithTag(6)
        if(image?.hidden==false){
            image?.hidden=true
            self.playerOne.playerBullet.remove()
            j=j+10
            scoreLabel.text="\(j)"
             NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("complete"), userInfo: nil, repeats: false)
        }
    }
    func hiden6(){
        var image=self.enemies.gameView.viewWithTag(7)
        if(image?.hidden==false){
            image?.hidden=true
            self.playerOne.playerBullet.remove()
            j=j+10
            scoreLabel.text="\(j)"
             NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("complete"), userInfo: nil, repeats: false)
        }
    }
    func hiden7(){
        var image=self.enemies.gameView.viewWithTag(8)
        if(image?.hidden==false){
            image?.hidden=true
            self.playerOne.playerBullet.remove()
            j=j+10
            scoreLabel.text="\(j)"
             NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("complete"), userInfo: nil, repeats: false)
        }
    }
    func hiden8(){
        var image=self.enemies.gameView.viewWithTag(9)
        if(image?.hidden==false){
            image?.hidden=true
            self.playerOne.playerBullet.remove()
            j=j+10
            scoreLabel.text="\(j)"
             NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("complete"), userInfo: nil, repeats: false)
        }
    }
    func hiden9(){
        var image=self.enemies.gameView.viewWithTag(10)
        if(image?.hidden==false){
            image?.hidden=true
            self.playerOne.playerBullet.remove()
            j=j+10
            scoreLabel.text="\(j)"
             NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("complete"), userInfo: nil, repeats: false)
        }
        
      
        
        
        
        
        
        
        
    }
    func hiden10(){
        var image=self.enemies.gameView.viewWithTag(11)
        if(image?.hidden==false){
            image?.hidden=true
            self.playerOne.playerBullet.remove()
            j=j+10
            
            scoreLabel.text="\(j)"
             NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("complete"), userInfo: nil, repeats: false)
        }

     
        
        
        
        
        
        
    }
    func hiden11(){
        var image=self.enemies.gameView.viewWithTag(12)
        if(image?.hidden==false){
            image?.hidden=true
            self.playerOne.playerBullet.remove()
            j=j+10
            scoreLabel.text="\(j)"
             NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("complete"), userInfo: nil, repeats: false)
        }
        
     
        
        
        
        
        
        
    }
    func hiden12(){
        var image=self.enemies.gameView.viewWithTag(13)
        if(image?.hidden==false){
            image?.hidden=true
            self.playerOne.playerBullet.remove()
            j=j+10
            scoreLabel.text="\(j)"
             NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("complete"), userInfo: nil, repeats: false)
        }

        
    
        
        
        
        
        
        
        
    }
    func hiden13(){
        var image=self.enemies.gameView.viewWithTag(14)
        if(image?.hidden==false){
            image?.hidden=true
            self.playerOne.playerBullet.remove()
            j=j+10
            scoreLabel.text="\(j)"
             NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("complete"), userInfo: nil, repeats: false)
        }
        

        
        
        
        
        
        
    }
    func hiden14(){
        var image=self.enemies.gameView.viewWithTag(15)
        if(image?.hidden==false){
            image?.hidden=true
            self.playerOne.playerBullet.remove()
            j=j+10
            scoreLabel.text="\(j)"
             NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("complete"), userInfo: nil, repeats: false)
        }

    
        
        
        
        
        
        
        
    }
    func hiden15(){
        var image=self.enemies.gameView.viewWithTag(16)
        if(image?.hidden==false){
            image?.hidden=true
            self.playerOne.playerBullet.remove()
            j=j+10
            scoreLabel.text="\(j)"
             NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("complete"), userInfo: nil, repeats: false)
        }

  
        
        
        
        
        
        
    }
    func hiden16(){
        var image=self.enemies.gameView.viewWithTag(17)
        if(image?.hidden==false){
            image?.hidden=true
            self.playerOne.playerBullet.remove()
            j=j+10
            
            scoreLabel.text="\(j)"
             NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("complete"), userInfo: nil, repeats: false)
        }

      
        
        
        
        
        
        
        
    }
    func hiden17(){
        var image=self.enemies.gameView.viewWithTag(18)
        if(image?.hidden==false){
            image?.hidden=true
            self.playerOne.playerBullet.remove()
            j=j+10
            scoreLabel.text="\(j)"
             NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("complete"), userInfo: nil, repeats: false)
        }

   
        
        
        
        
        
        
        
    }
    func hiden18(){
        var image=self.enemies.gameView.viewWithTag(19)
        if(image?.hidden==false){
            image?.hidden=true
            self.playerOne.playerBullet.remove()
            j=j+10
            scoreLabel.text="\(j)"
             NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("complete"), userInfo: nil, repeats: false)
        }

       
        
        
        
        
        
        
        
    }
    func hiden19(){
        var image=self.enemies.gameView.viewWithTag(20)
        if(image?.hidden==false){
            image?.hidden=true
            self.playerOne.playerBullet.remove()
            j=j+10
            scoreLabel.text="\(j)"
             NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("complete"), userInfo: nil, repeats: false)
        }

  
        
        
        
        
        
        
        
    }
    func hiden20(){
        var image=self.enemies.gameView.viewWithTag(21)
        if(image?.hidden==false){
            image?.hidden=true
            self.playerOne.playerBullet.remove()
            j=j+10
            
            scoreLabel.text="\(j)"
             NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("complete"), userInfo: nil, repeats: false)
        }
        
        
        
        
        
        
        
    }
    func hiden21(){
        var image=self.enemies.gameView.viewWithTag(22)
        if(image?.hidden==false){
            image?.hidden=true
            self.playerOne.playerBullet.remove()
            j=j+10
            scoreLabel.text="\(j)"
             NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("complete"), userInfo: nil, repeats: false)
        }

    
        
        
        
        
        
        
    }
    func hiden22(){
        var image=self.enemies.gameView.viewWithTag(23)
        if(image?.hidden==false){
            image?.hidden=true
            self.playerOne.playerBullet.remove()
            j=j+10
            scoreLabel.text="\(j)"
             NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("complete"), userInfo: nil, repeats: false)
        }

 
        
        
        
        
        
        
        
    }
    func hiden23(){
        var image=self.enemies.gameView.viewWithTag(24)
        if(image?.hidden==false){
            image?.hidden=true
            self.playerOne.playerBullet.remove()
            j=j+10
            scoreLabel.text="\(j)"
             NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("complete"), userInfo: nil, repeats: false)
        }

   
        
        
        
        
        
        
        
    }
    func hiden24(){
        var image=self.enemies.gameView.viewWithTag(25)
        if(image?.hidden==false){
            image?.hidden=true
            self.playerOne.playerBullet.remove()
            j=j+10
            scoreLabel.text="\(j)"
             NSTimer.scheduledTimerWithTimeInterval(0.0002, target: self, selector: Selector("complete"), userInfo: nil, repeats: false)
        }
        
    }



    func releaseTouch(){
        if(self.moveTimer != nil){
            self.moveTimer?.invalidate()
            self.moveTimer = nil;
        }
    }
    func complete(){
        if(j==250){
           self.changeState(.RELOADING)
            cvc=self.storyboard!.instantiateViewControllerWithIdentifier("completevc") as UIViewController
            self.view.addSubview(cvc.view)
            
        }
        
    }

    

}
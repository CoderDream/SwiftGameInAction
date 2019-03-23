//
//  Game.swift
//  Space  SpaceInvaders
//
//  Created by Mac on 14-10-9.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIkit
class GameViewController: UIViewController {
    
    var bulletView:UIImageView=UIImageView()
    var playerImage:UIImage=UIImage(named: "ship.png")
    var playerRect:CGRect=CGRectMake(0, 0, 0, 0)
    var playerView:UIImageView=UIImageView()
    var moveTimer:NSTimer?=NSTimer()
    
    @IBOutlet weak var iv: UIImageView!
    @IBAction func moveLeft(sender: AnyObject) {
        self.releaseTouch()
       moveTimer=NSTimer.scheduledTimerWithTimeInterval(0.03, target: self, selector: Selector("movePlayerLeft"), userInfo: nil, repeats: true)
        
        
        

    }
    
    @IBAction func fireButton(sender: AnyObject) {
        var fire:PlayerBullet=PlayerBullet()
        fire.fireBullet(self.view, playerView: self.playerView)
    }
    
    @IBAction func moveRight(sender: AnyObject) {
        self.releaseTouch()
        moveTimer=NSTimer.scheduledTimerWithTimeInterval(0.03, target: self, selector: Selector("movePlayerRight"), userInfo: nil, repeats: true)

        
    }
    func movePlayerLeft(){
        if(self.playerRect.origin.x >= 10){
            self.playerRect = CGRectOffset(self.playerRect, -3, 0);
            self.playerView.frame = self.playerRect;
        }
    }

   
    func movePlayerRight(){
        if(self.playerRect.origin.x <= 290){
            self.playerRect = CGRectOffset(self.playerRect, 3, 0);
            self.playerView.frame = self.playerRect;
        }
    }
    func releaseTouch(){
        if(self.moveTimer != nil){
            self.moveTimer?.invalidate()
            self.moveTimer = nil;
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        self.playerView.image=self.playerImage
        self.playerRect=CGRectMake(50, 400, 32, 32)
        self.playerView.frame=self.playerRect
        self.view.addSubview(self.playerView)
        var enemy:Enemy=Enemy()
        enemy.initEnemies(self.view)
        
        
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

}


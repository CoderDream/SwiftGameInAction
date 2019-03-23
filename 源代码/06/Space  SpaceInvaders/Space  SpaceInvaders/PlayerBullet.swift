//
//  PlayerBullet.swift
//  Space  SpaceInvaders
//
//  Created by Mac on 14-10-9.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import Foundation
import UIKit
class PlayerBullet:NSObject {
    var bulletRect:CGRect=CGRect()
    
    var bulletView:UIImageView=UIImageView()
    var bulletTimer:NSTimer?=nil
    var gameView:UIView=UIView()
    func fireBullet(gameView:UIView,playerView:UIImageView){
        self.gameView=gameView
        var bombImage1=UIImage(named: "bullet.png")
       
        var bulletStartX=playerView.frame.origin.x + (playerView.frame.size.width/2) - 4
        var imageRef=CGImageCreateWithImageInRect(bombImage1.CGImage, CGRectMake(0, 0, 32, 64))
        var imageRef2=CGImageCreateWithImageInRect(bombImage1.CGImage, CGRectMake(33, 0, 32, 64))
        var bombArray:NSMutableArray=NSMutableArray()
        bombArray.addObject(UIImage(CGImage: imageRef))
        bombArray.addObject(UIImage(CGImage: imageRef2))
     
        self.bulletRect=CGRectMake(bulletStartX, playerView.frame.origin.y, 8, 16)
        self.bulletView=UIImageView(frame: bulletRect)
        self.bulletView.image=UIImage(CGImage: imageRef2)
      
        self.bulletView.animationImages=bombArray
        self.bulletView.animationDuration=0.3
        self.gameView.addSubview(self.bulletView)
        self.bulletView.startAnimating()
    self.bulletTimer=NSTimer.scheduledTimerWithTimeInterval(0.03, target: self, selector: Selector("moveBullet"), userInfo: nil, repeats: true)
   
     }
    func moveBullet(){
        self.bulletRect=CGRectOffset(self.bulletRect, 0, -5)
        self.bulletView.frame=self.bulletRect
        if(self.bulletRect.origin.y<50){
            self.bulletTimer?.invalidate()
            self.bulletTimer=nil
            self.bulletView.removeFromSuperview()
            
        }
        
        
    }
    
    
    
}
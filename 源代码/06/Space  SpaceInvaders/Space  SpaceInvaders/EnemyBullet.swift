//
//  EnemyBullet.swift
//  Space  SpaceInvaders
//
//  Created by Mac on 14-10-9.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import Foundation
import UIKit

class EnemyBullet: NSObject {
    var bombRect:CGRect=CGRectMake(0, 0, 0, 0)
    
    var bombView:UIImageView=UIImageView()
    var bombTimer:NSTimer?=nil
    var gameView:UIView=UIView()
    func  fireBullet(gameView:UIView,enemyList:NSArray){
        var randEnemy:Int=random()%enemyList.count
        var enemyView: AnyObject=enemyList[randEnemy]
        self.gameView=gameView
        var bombImage1:UIImage=UIImage(named: "bullet.png")
 
        var bombStartX=enemyView.frame.origin.x
        var imageRef=CGImageCreateWithImageInRect(bombImage1.CGImage, CGRectMake(0, 0, 32, 64))
        var imageRef2=CGImageCreateWithImageInRect(bombImage1.CGImage, CGRectMake(33, 0, 32, 64))
        var bombArray:NSMutableArray=NSMutableArray()
        bombArray.addObject(UIImage(CGImage: imageRef))
        bombArray.addObject(UIImage(CGImage: imageRef2))
        
        self.bombRect=CGRectMake(bombStartX, enemyView.frame.origin.y, 8, 16)
        self.bombView.frame=self.bombRect
        self.bombView.image=UIImage(CGImage: imageRef2)
        
        self.bombView.animationImages=bombArray
        self.bombView.animationDuration=3
        self.gameView.addSubview(self.bombView)
        self.bombView.startAnimating()
        self.bombTimer=NSTimer.scheduledTimerWithTimeInterval(0.03, target: self, selector: Selector("moveBomb"), userInfo: nil, repeats: true)
        
    }
    func moveBomb(){
        self.bombRect=CGRectOffset(self.bombRect, 0, 5)
        self.bombView.frame=self.bombRect
        if(self.bombRect.origin.y>440){
            self.bombTimer?.invalidate()
            self.bombTimer=nil
            self.bombView.removeFromSuperview()
            
        }

        
    }
    
}

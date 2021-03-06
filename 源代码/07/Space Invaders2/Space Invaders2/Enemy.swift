//
//  Enemy.swift
//  Space Invaders2
//
//  Created by Mac on 14-10-14.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import Foundation
import UIKit
class Enemy: NSObject {
    var gameView:UIView=UIView()
    var minXPos:NSInteger=0
    var maxXPos:NSInteger=0
    var enemyList:NSMutableArray=NSMutableArray()
    var enemyTimer:NSTimer?=nil
    var enemyBulletTimer:NSTimer?=nil
    var eSize:Int=32
    var goingLeft :Bool=false
    var enemyRows:Int=5
    var enemyColumns:Int=5
    var enemiesBullet:EnemyBullet?=EnemyBullet()
    var enemyView:UIImageView?=nil
    func initEnemies(gameView:UIView){
        self.minXPos=10
        self.maxXPos=278
        self.gameView=gameView
        var rowCount:Int=0
        var startX:Int=10
        var startY:Int=0
        var enemyImage=UIImage(named: "enemy01.png")
        var i:Int=0
        for(i;i<(enemyRows * enemyColumns);i++){
            var columnMod:Int=i%enemyColumns
            if(columnMod==0){
                rowCount++
            }
            var xPos:Int=startX+((eSize*columnMod)+(columnMod*5))
            var yPos:Int=startY+((eSize*rowCount)+(rowCount*10))
            enemyView=UIImageView(image: enemyImage)
            enemyView?.frame=CGRectMake(CGFloat(xPos), CGFloat(yPos), CGFloat(eSize), CGFloat(eSize));
            enemyView?.tag=i+1
            self.enemyList.addObject(enemyView!)
            self.gameView.addSubview(enemyView!)
  
            
            
        }
        
        
        
    }
    func startTimers(){
        self.enemyTimer=NSTimer.scheduledTimerWithTimeInterval(0.03, target: self, selector: Selector("moveEnemies"), userInfo: nil, repeats: true)
        self.enemyBulletTimer=NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("dropBomb"), userInfo: nil, repeats: true)

    }
    func moveEnemies(){
        var enemyView:UIImageView=self.enemyList[0] as UIImageView
        if(Int(enemyView.frame.origin.x) <= self.minXPos){
            goingLeft = false
            
        }
        enemyView = self.enemyList[enemyColumns-1] as UIImageView
        if(Int(enemyView.frame.origin.x)>=self.maxXPos){
            goingLeft = true
            
        }
        var i:Int=0
        for(i;i<self.enemyList.count; i++){
            enemyView = self.enemyList[i] as UIImageView;
            var xPos:Int=0
            
            
            if(goingLeft){
                xPos = Int(enemyView.frame.origin.x)-3;
            }else{
                xPos = Int(enemyView.frame.origin.x)+3;
            }
            
            enemyView.frame = CGRectMake(CGFloat(xPos), enemyView.frame.origin.y, CGFloat(eSize), CGFloat(eSize));
            self.gameView.addSubview(enemyView)
        }
        
    }
    func dropBomb(){
        if(self.enemiesBullet == nil || self.enemiesBullet?.isActive == false){
          
           enemiesBullet!.fireBullet(self.gameView, enemyList: self.enemyList)
        }

    
        
        
    }
    
    func stopTimers(){
        self.enemyTimer?.invalidate()
        self.enemyTimer=nil
        self.enemyBulletTimer?.invalidate()
        self.enemyBulletTimer=nil
        self.enemiesBullet=nil
    }
    
}

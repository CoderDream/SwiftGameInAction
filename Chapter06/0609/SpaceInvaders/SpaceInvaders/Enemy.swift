//
//  Enemy.swift
//  SpaceInvaders
//
//  Created by CoderDream on 2019/3/25.
//  Copyright © 2019 CoderDream. All rights reserved.
//

import Foundation
import UIKit

class Enemy: NSObject {
    // 敌人的大小
    var eSize: Int = 32
    var gameView: UIView = UIView()
    
    var enemyList: NSMutableArray = NSMutableArray()
    var enemyRows: Int = 5
    var enemyColumns: Int = 5
    
    // 移动敌人
    var enemyTimer: Timer = Timer()
    var minXPos: NSInteger = 0
    var maxXPos: NSInteger = 0
    var goingLeft :Bool = false
    
    func initEnemies(gameView:UIView){
        // 添加敌人
        self.gameView = gameView
        let enemyImage = UIImage(named: "enemy01.png")
        //let enemyView = UIImageView(image: enemyImage)
        //enemyView.frame = CGRect(x: 10, y: 10, width: eSize, height: eSize)
        //self.gameView.addSubview(enemyView)
        
        // 敌人位置
        self.minXPos = 10
        self.maxXPos = 365
        
        var rowCount: Int = 0
        let startX: Int = 10
        let startY: Int = 0
        for i in 0 ..< enemyRows * enemyColumns {
            let columnMod: Int = i % enemyColumns
            if columnMod == 0 {
                rowCount += 1
            }
            // 设置位置
            let xPos: Int = startX + ((eSize * columnMod) + (columnMod * 5))
            let yPos: Int = startY + ((eSize * rowCount) + (rowCount * 10))
            // 创建一个 enemyView 的图像对象，用来显示敌人
            let enemyView = UIImageView(image: enemyImage)
            enemyView.frame = CGRect(x: xPos, y: yPos, width: eSize, height: eSize)
            self.enemyList.add(enemyView)
            self.gameView.addSubview(enemyView)            
        }
        
        self.enemyTimer = Timer.scheduledTimer(timeInterval: 0.03, target: self, selector: #selector(moveEnemies), userInfo: nil, repeats: true)
    }
    
    @objc func moveEnemies(){
        var enemyView:UIImageView=self.enemyList[0] as! UIImageView
        if(Int(enemyView.frame.origin.x) <= self.minXPos){
            goingLeft = false
            
        }
        enemyView = self.enemyList[enemyColumns-1] as! UIImageView
        if(Int(enemyView.frame.origin.x)>=self.maxXPos){
            goingLeft = true
            
        }
        for i in 0 ..< self.enemyList.count {
            enemyView = self.enemyList[i] as! UIImageView;
            var xPos: Int = 0
            
            if goingLeft {
                xPos = Int(enemyView.frame.origin.x) - 3;
            }else{
                xPos = Int(enemyView.frame.origin.x) + 3;
            }
            
            enemyView.frame = CGRect(x: xPos, y: Int(enemyView.frame.origin.y), width: eSize, height: eSize)
            self.gameView.addSubview(enemyView)
        }
    }
}

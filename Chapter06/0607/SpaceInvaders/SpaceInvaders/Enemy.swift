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
    
    func initEnemies(gameView:UIView){
        // 添加敌人
        self.gameView = gameView
        let enemyImage = UIImage(named: "enemy01.png")
        //let enemyView = UIImageView(image: enemyImage)
        //enemyView.frame = CGRect(x: 10, y: 10, width: eSize, height: eSize)
        //self.gameView.addSubview(enemyView)
        
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
    }
}

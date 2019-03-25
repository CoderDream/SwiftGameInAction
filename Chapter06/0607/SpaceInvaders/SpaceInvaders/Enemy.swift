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
    
    func initEnemies(gameView:UIView){
        // 添加敌人
        self.gameView = gameView
        let enemyImage = UIImage(named: "enemy01.png")
        let enemyView = UIImageView(image: enemyImage)
        enemyView.frame = CGRect(x: 10, y: 10, width: eSize, height: eSize)
        self.gameView.addSubview(enemyView)
    }
}

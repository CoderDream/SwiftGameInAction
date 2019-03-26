//
//  EnemyBullet.swift
//  SpaceInvaders
//
//  Created by CoderDream on 2019/3/26.
//  Copyright © 2019 CoderDream. All rights reserved.
//

import Foundation
import UIKit

class EnemyBullet: NSObject {
    var bombRect: CGRect = CGRect(x: 0, y: 0, width: 0, height: 0)
    
    var bombView: UIImageView = UIImageView()
    var bombTimer: Timer? = nil
    var gameView:UIView = UIView()
    
    func  fireBullet(gameView: UIView, enemyList: NSArray){
        let randEnemy: Int = Int(arc4random()) % enemyList.count
        let enemyView: AnyObject = enemyList[randEnemy] as AnyObject
        self.gameView = gameView
        let bombImage1: UIImage = UIImage(named: "bullet.png")!
        let bombStartX = enemyView.frame.origin.x
        
        let imageRef1 = UIImageView(image: bombImage1)
        imageRef1.frame = CGRect(x: 0, y: 0, width: 32, height: 64)
        let imageRef2 = UIImageView(image: bombImage1)
        imageRef2.frame = CGRect(x: 33, y: 0, width: 32, height: 64)
        
        let bombArray: NSMutableArray = NSMutableArray()
        bombArray.add(imageRef1.image!)
        bombArray.add(imageRef2.image!)
        
        self.bombRect = CGRect(x: bombStartX, y: enemyView.frame.origin.y, width: 8, height: 16)
        self.bombView.image = imageRef2.image
        
        self.bombView.animationImages = bombArray as? [UIImage]
        self.bombView.animationDuration = 3
        self.gameView.addSubview(self.bombView)
        self.bombView.startAnimating()
        
        // 移动子弹
        bombTimer = Timer.scheduledTimer(timeInterval: 0.03, target: self, selector: #selector(moveBomb), userInfo: nil, repeats: true)
    }
    @objc func moveBomb(){
        self.bombRect = self.bombRect.offsetBy(dx: 0, dy: 5)
        self.bombView.frame = self.bombRect
        if(self.bombRect.origin.y>440){
            self.bombTimer?.invalidate()
            self.bombTimer=nil
            self.bombView.removeFromSuperview()
        }
    }
}

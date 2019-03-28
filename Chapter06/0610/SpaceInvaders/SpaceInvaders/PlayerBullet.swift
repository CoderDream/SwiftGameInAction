//
//  PlayerBullet.swift
//  SpaceInvaders
//
//  Created by CoderDream on 2019/3/26.
//  Copyright © 2019 CoderDream. All rights reserved.
//

import Foundation
import UIKit

class PlayerBullet: NSObject {
    var bulletRect: CGRect=CGRect()
    var bulletView: UIImageView = UIImageView()
    var gameView: UIView = UIView()
    
    var bulletTimer: Timer? = nil
    
    func fireBullet(gameView:UIView,playerView:UIImageView){
        self.gameView = gameView
        let bombImage1 = UIImage(named: "bullet.png")
        let bulletStartX = playerView.frame.origin.x + (playerView.frame.size.width/2) - 4
        // 创建一个 enemyView 的图像对象，用来显示敌人
        let imageRef2 = UIImageView(image: bombImage1)
        imageRef2.frame = CGRect(x: 30, y: 0, width: 32, height: 64)
        
        let imageRef1 = UIImageView(image: bombImage1)
        imageRef1.frame = CGRect(x: 0, y: 0, width: 32, height: 64)
        
        let bombArray: NSMutableArray = NSMutableArray()
        bombArray.add(imageRef1.image!)
        bombArray.add(imageRef2.image!)
        
        self.bulletView.animationImages = bombArray as? [UIImage]
        self.bulletView.animationDuration = 0.3
        self.bulletView.startAnimating()
        
        self.bulletRect = CGRect(x: bulletStartX, y: playerView.frame.origin.y, width: 8, height: 16)
        self.bulletView = UIImageView(frame: bulletRect)
        self.bulletView.image = imageRef2.image//UIImage(cgImage: imageRef2 as! CGImage) //(CGImage: imageRef2 as! CGImage)
        self.gameView.addSubview(self.bulletView)
        
        // 移动子弹
        bulletTimer = Timer.scheduledTimer(timeInterval: 0.03, target: self, selector: #selector(moveBullet), userInfo: nil, repeats: true)
    }
    
    @objc func moveBullet(){
        print("moveBullet")
        self.bulletRect = self.bulletRect.offsetBy(dx: 0, dy: -5)
        self.bulletView.frame = self.bulletRect
        if(self.bulletRect.origin.y < 50){            
            print("moveBullet: \(self.bulletRect.origin.y)")
            self.bulletTimer?.invalidate()
            self.bulletTimer = nil
            self.bulletView.removeFromSuperview()
        }
    }
        
}

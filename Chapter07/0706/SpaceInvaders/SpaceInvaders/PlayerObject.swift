//
//  PlayerObject.swift
//  SpaceInvaders
//
//  Created by CoderDream on 2019/3/26.
//  Copyright © 2019 CoderDream. All rights reserved.
//

import Foundation

import UIKit
class PlayerObject: NSObject {
    var gameView: UIView = UIView()
    var playerRect: CGRect = CGRect()
    var playerImage: UIImage = UIImage(named: "ship.png")!
    var playerView: UIImageView = UIImageView()
    
    func initPlayer(gameView: UIView) -> PlayerObject {
        self.gameView = gameView
        // 设置图像视图显示的图像
        self.playerView.image = self.playerImage
        self.playerRect = CGRect(x: 50, y: 400, width: 32, height: 32)
        // 设置图像视图的框架
        self.playerView.frame = self.playerRect
        // 添加图像视图
        self.gameView.addSubview(self.playerView)
        return self
    }
    
    func getPlayerView() -> UIView{
        return self.playerView
    }
}

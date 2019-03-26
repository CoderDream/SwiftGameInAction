//
//  Game.swift
//  SpaceInvaders
//
//  Created by CoderDream on 2019/3/25.
//  Copyright © 2019 CoderDream. All rights reserved.
//

import Foundation

import UIKit

class GameViewController: UIViewController {
    
    var playerImage: UIImage =  UIImage(named: "ship.png")!
    var playerRect: CGRect = CGRect(x: 0, y: 0, width: 0, height: 0)
    var playerView: UIImageView = UIImageView()
    
    var moveTimer: Timer? = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 设置飞船的图像
        self.playerView.image = self.playerImage
        self.playerRect = CGRect(x: 50, y: 400, width: 64, height: 64)
        self.playerView.frame = self.playerRect
        self.view.addSubview(self.playerView)
        
        // 添加敌人
        let enemy: Enemy = Enemy()
        enemy.initEnemies(gameView: self.view)
    }
    
    @IBAction func moveLeft(_ sender: UIButton) {
        print("moveLeft")
        self.releaseTouch()
        moveTimer = Timer.scheduledTimer(timeInterval: 0.03, target: self, selector: #selector(GameViewController.movePlayerLeft), userInfo: nil, repeats: true)
    }
    
    @objc func movePlayerLeft() {
        // 判断飞船是否超出边界
        if self.playerRect.origin.x >= 10 {
            self.playerRect = self.playerRect.offsetBy(dx: -3, dy: 0)
            self.playerView.frame = self.playerRect
        }
    }
    
    @IBAction func moveRight(_ sender: UIButton) {
        print("moveRight")
        self.releaseTouch()
        moveTimer = Timer.scheduledTimer(timeInterval: 0.03, target: self, selector: #selector(GameViewController.movePlayerRight), userInfo: nil, repeats: true)
    }
    
    @objc func movePlayerRight() {
        // 判断飞船是否超出边界
        if self.playerRect.origin.x <= 340 {
            print("move right x: \(self.playerRect.origin.x)")
            self.playerRect = self.playerRect.offsetBy(dx: 3, dy: 0)
            self.playerView.frame = self.playerRect
        }
    }
    
    func releaseTouch() {
        // 判断定时器是否为空
        if self.moveTimer != nil {
            self.moveTimer?.invalidate()
            self.moveTimer = nil
        }
    }
    
}

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
    
    var collisionTimer: Timer? = Timer()
    var enemies: Enemy = Enemy()
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    enum GAME_STATE: Int{
        case INITIALIZING   = 1
        case PLAYING        = 2
        case RELOADING      = 3
        case ENDING         = 4
    }
    var currentState = GAME_STATE.INITIALIZING
    var loadingView: UIImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.changeState(newState: .INITIALIZING)
        
//        // 设置飞船的图像
//        self.playerView.image = self.playerImage
//        self.playerRect = CGRect(x: 50, y: 400, width: 64, height: 64)
//        self.playerView.frame = self.playerRect
//        self.view.addSubview(self.playerView)
//
//        // 添加敌人
//        let enemy: Enemy = Enemy()
//        enemy.initEnemies(gameView: self.view)
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
    
    @IBAction func fireBtnClick(_ sender: UIButton) {
        let fire: PlayerBullet = PlayerBullet()
        fire.fireBullet(gameView: self.view, playerView: self.playerView)
    }
    
    func changeState(newState: GAME_STATE){
        self.currentState = newState
        switch newState {
        case .INITIALIZING:
            self.loadingScreen()
            //print("initializing")
        case .PLAYING:
            break
        case .RELOADING:
            self.view.addSubview(self.loadingView)
            //self.enemies.stopTimers()
            self.collisionTimer?.invalidate()
            self.collisionTimer=nil
            
        case .ENDING:
            break
       // default:
//            var alert=UIAlertView()
//            alert.title="Integer out of range"
//            alert.addButtonWithTitle("Cancel")
//            alert.show()
           // print("default")
        }
    }
    
    func loadingScreen(){
        print("loadingScreen")
        // 添加提示界面
        self.loadingView.image = UIImage(named: "loading.png")
        self.loadingView.frame = self.view.frame
        self.view.addSubview(self.loadingView)
        Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(closeScreen), userInfo: nil, repeats: false)
    }
    
    // 关闭提示界面
    @objc func closeScreen(){
        // 从主视图中移除视图对象
        self.loadingView.removeFromSuperview()
    }
    func endScreen(){
//        var alert:UIAlertView=UIAlertView()
//        alert.title="游戏结束"
//        alert.message="是否保存分数"
//        alert.addButtonWithTitle("是")
//        alert.addButtonWithTitle("否")
//        alert.delegate=self
//        alert.show()
//        self.loadingView.removeFromSuperview()
//        self.changeState(.ENDING)
//        back=self.storyboard!.instantiateViewControllerWithIdentifier("back") as UIViewController
//        self.view.addSubview(back.view)
    }
}

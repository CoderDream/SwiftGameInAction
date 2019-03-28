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
    
    // var playerImage: UIImage =  UIImage(named: "ship.png")!
    var playerRect: CGRect = CGRect(x: 0, y: 0, width: 0, height: 0)
    var playerView: UIView = UIView()
    //var moveTimer:NSTimer?=NSTimer()
    //var collisionTimer:NSTimer?=NSTimer()
    // 实现飞船的对象
    var playerOne: PlayerObject = PlayerObject()
    // 子弹对象
    //var playerBullet: PlayerBullet = PlayerBullet()
    //var playerView: UIImageView = UIImageView()
    
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
        self.changeState(newState: .PLAYING)
    }
    
    @IBAction func moveLeft(_ sender: UIButton) {
        print("moveLeft")
        self.releaseTouch()
        if self.currentState != .PLAYING {
            return
        }
        // 注意这里的 target 为 self.playOne
        moveTimer = Timer.scheduledTimer(timeInterval: 0.03, target: self.playerOne, selector: #selector(PlayerObject.movePlayerLeft), userInfo: nil, repeats: true)
    }
    
    @IBAction func moveRight(_ sender: UIButton) {
        print("moveRight")
        self.releaseTouch()
        if self.currentState != .PLAYING {
            return
        }
        // 注意这里的 target 为 self.playOne
        moveTimer = Timer.scheduledTimer(timeInterval: 0.03, target: self.playerOne, selector: #selector(PlayerObject.movePlayerRight), userInfo: nil, repeats: true)
    }
    
    func releaseTouch() {
        // 判断定时器是否为空
        if self.moveTimer != nil {
            self.moveTimer?.invalidate()
            self.moveTimer = nil
        }
    }
    
    @IBAction func fireBtnClick(_ sender: UIButton) {
        let playerBullet: PlayerBullet = PlayerBullet() // 子弹对象要放在方法里，不能作为类对象，否则子弹会停在屏幕上，而且屏幕外的子弹不会消失
        playerBullet.fireBullet(gameView: self.view, playerView: self.playerView as! UIImageView)
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
        }
    }
    
    func loadingScreen(){
        print("loadingScreen")
        playerOne = PlayerObject().initPlayer(gameView: self.view)
        self.playerView = self.playerOne.getPlayerView()
        // 添加提示界面
        self.loadingView.image = UIImage(named: "loading.png")
        self.loadingView.frame = self.view.frame
        self.view.addSubview(self.loadingView)
        Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(closeScreen), userInfo: nil, repeats: false)
        
        // 添加敌人
        self.enemies.initEnemies(gameView: self.view)
    }
    
    // 关闭提示界面
    @objc func closeScreen(){
        // 从主视图中移除视图对象
        self.loadingView.removeFromSuperview()
        // 移动敌人
        self.enemies.startTimers()
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

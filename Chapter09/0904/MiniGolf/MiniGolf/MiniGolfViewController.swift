//
//  MiniGolfViewController.swift
//  MiniGolf
//
//  Created by CoderDream on 2019/4/11.
//  Copyright © 2019 CoderDream. All rights reserved.
//

import UIKit

class MiniGlofViewController: UIViewController {
    var gameState: String? = nil
    var playerBall: UIImage = UIImage(named: "ball.png")!
    var playerBallView: UIImageView = UIImageView()
    var ballRect: CGRect = CGRect()
    // 此定时器对象的动作用来实现动画效果
    var updateTimer: Timer? = nil
    // 保存球的轨迹
    var ballDirection: CGPoint = CGPoint(x: 0, y: 0)
    // 保存球的力度
    var ballVelocity: Float = 0
    // 保存玩家开始触摸的位置
    var touchStartPos: CGPoint = CGPoint()
    // 保存结束触摸的位置
    var touchEndPos: CGPoint = CGPoint()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.gameState = "Loading"
        self.playerBallView.image = self.playerBall
        // 屏幕高度
        let screenHeight: CGFloat = UIScreen.main.bounds.size.height
        // 屏幕宽度
        let screenWeight: CGFloat = UIScreen.main.bounds.size.width
        self.ballRect = CGRect(x: screenWeight / 2 - 12, y: screenHeight - 130, width: 24, height: 24)
        self.playerBallView.frame = self.ballRect
        self.view.addSubview(self.playerBallView)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // 判断当前游戏的状态是否为Playing
        if (self.gameState?.elementsEqual("Playing"))! {
            return
        }
        let touch: AnyObject = touches.an
    }
}

//
//  PlayerBullet.swift
//  Space Invaders2
//
//  Created by Mac on 14-10-14.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import Foundation
import UIKit
class PlayerBullet:NSObject {
    var bulletRect:CGRect=CGRect()
    var bulletView:UIImageView=UIImageView()
    var bulletTimer:NSTimer?=nil
    var gameView:UIView=UIView()
    //发射子弹
    func fireBullet(gameView:UIView,playerView:UIImageView){
        self.gameView=gameView
        var bombImage1=UIImage(named: "bullet.png")
        
        var bulletStartX=playerView.frame.origin.x + (playerView.frame.size.width/2) - 4
        //截图
        var imageRef=CGImageCreateWithImageInRect(bombImage1?.CGImage, CGRectMake(0, 0, 32, 64))
        var imageRef2=CGImageCreateWithImageInRect(bombImage1?.CGImage, CGRectMake(33, 0, 32, 64))
        var bombArray:NSMutableArray=NSMutableArray()				//创建一个可变数组对象
        //为数组添加对象
        bombArray.addObject(UIImage(CGImage: imageRef)!)
        bombArray.addObject(UIImage(CGImage: imageRef2)!)
        self.bulletRect=CGRectMake(bulletStartX, playerView.frame.origin.y, 8, 16)
        // bulletView图像视图对象用来显示子弹
        self.bulletView=UIImageView(frame: bulletRect)				//初始化图像视图的框架
        self.bulletView.image=UIImage(CGImage: imageRef2)
        //实现子弹图像切换的动画效果
        self.bulletView.animationImages=bombArray
        self.bulletView.animationDuration=0.3
        self.gameView.addSubview(self.bulletView)
        self.bulletView.startAnimating()
        //创建定时器
        self.bulletTimer=NSTimer.scheduledTimerWithTimeInterval(0.03, target: self, selector: Selector("moveBullet"), userInfo: nil, repeats: true)
    }
    //向上移动子弹
    func moveBullet(){
        self.bulletRect=CGRectOffset(self.bulletRect, 0, -5)
        self.bulletView.frame=self.bulletRect
        //判断子弹的y的位置是否小于10
        if(self.bulletRect.origin.y<10){
            self.remove()
        }
    }
    //移除移动并且使定时器失效
    func remove(){
        self.bulletRect=CGRectMake(0, 350, 32, 64)
        self.bulletView.removeFromSuperview()						//移除bulletView图像视图对象
        self.bulletTimer?.invalidate()
        self.bulletTimer=nil
    }
}

//
//  MiniGolfViewController.swift
//  Mini Golf
//
//  Created by Mac on 14-10-23.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import Foundation
import UIKit

class MiniGolfViewController: UIViewController {
    
    var gameState:NSString?=nil
    var playerBall:UIImage=UIImage(named: "ball.png")!
    var playerBallView:UIImageView=UIImageView()
    var ballRect:CGRect=CGRect()
    
    var updateTimer:NSTimer?=nil
    var ballDirection:CGPoint=CGPointMake(0, 0)
    var ballVelocity:Float=0
    var touchStartPos:CGPoint=CGPoint()
    var touchEndPos:CGPoint=CGPoint()
    var courseBounds:CGRect=CGRect()
    var cupRect:CGRect=CGRect()
    
    
    var strokeCounter:Int=0
    
    
    @IBOutlet weak var StrokeCount: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.gameState="Loading"
        self.playerBallView.image=self.playerBall
        var screenheight:CGFloat=UIScreen.mainScreen().bounds.size.height
        self.ballRect=CGRectMake(160, screenheight - 100, 24, 24)
        self.playerBallView.frame=self.ballRect
        self.view.addSubview(self.playerBallView)
        self.cupRect=CGRectMake(152, 57, 10,10)
        courseBounds=CGRectMake(110,30, 100,470)
        self.StrokeCount.text="杆数: \(strokeCounter) "
        self.updateTimer=NSTimer.scheduledTimerWithTimeInterval(0.03, target: self, selector: Selector("update"), userInfo: nil, repeats: true)
        self.gameState="Waiting"
        
    }
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        if((self.gameState?.isEqualToString("Playing")) == true){
            return
        }
        var touch: AnyObject=touches.anyObject()!
        touchStartPos=touch.locationInView(touch.view)
    }
    
    override func touchesMoved(touches: NSSet, withEvent event: UIEvent) {
        var touch: AnyObject=touches.anyObject()!
        touchEndPos=touch.locationInView(touch.view)
        println(touchEndPos.x)
    }
    
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        if((self.gameState?.isEqualToString("Playing")) == true){
            return
        }
        var distance=sqrt(pow((touchEndPos.x-touchStartPos.x), 2.0)+pow((touchEndPos.y-touchStartPos.y), 2.0))
        if(distance>0){
            self.gameState="Playing"
            strokeCounter++
            self.StrokeCount.text="杆数: \(strokeCounter) "
            
            ballVelocity = Float(distance) * 0.01
            ballDirection = CGPointMake((touchEndPos.x - touchStartPos.x) * 0.01, (touchEndPos.y - touchStartPos.y) * 0.01)
        }
    }
    
    override func touchesCancelled(touches: NSSet!, withEvent event: UIEvent!) {
        touchStartPos = CGPointMake(0,0)
        touchEndPos = CGPointMake(0,0)
        ballVelocity = 0
        self.gameState = "Waiting"
    }
    
    func update(){
        if((self.gameState?.isEqualToString("Playing")) == false){
            return
        }
        if((self.gameState?.isEqualToString("Playing")) == false){
            return
        }
        if(self.ballRect.origin.x <= courseBounds.origin.x){
            ballDirection.x=fabs(ballDirection.x)
        }else if ((self.ballRect.origin.x + self.ballRect.size.width) >= (courseBounds.origin.x+courseBounds.size.width)){
            ballDirection.x = -fabs(ballDirection.x)
        }
        if (self.ballRect.origin.y <= courseBounds.origin.y) {
            ballDirection.y = fabs(ballDirection.y)
        }else if (self.ballRect.origin.y + self.ballRect.size.height >= (courseBounds.size.height+courseBounds.origin.y)){
            ballDirection.y = -fabs(ballDirection.y)
        }
        if(ballVelocity>0){
            ballVelocity-=0.05
        }
        if(ballVelocity <= 0){
            self.gameState = "Waiting"
            ballVelocity = 0
        }
        if(CGRectIntersectsRect(self.ballRect, self.cupRect)){
            self.gameState = "Done"
            self.ballRect = CGRectMake(150, 55, 12, 12);
            ballVelocity = 0
            var alert:UIAlertView=UIAlertView()
            alert.title="球终于进了"
            alert.message="是否重新进入游戏"
            alert.addButtonWithTitle("是")
            alert.addButtonWithTitle("否")
            alert.show()
            alert.delegate=self
        }
        
        
        
        self.ballRect=CGRectOffset(self.ballRect, ballDirection.x*CGFloat(ballVelocity), ballDirection.y*CGFloat(ballVelocity))
        self.playerBallView.frame=self.ballRect
    }
    func alertView(_alertView: UIAlertView,clickedButtonAtIndex buttonIndex: Int){
        var name:NSString=_alertView.buttonTitleAtIndex(buttonIndex)
        if(name.isEqualToString("是")){
            var screenheight:CGFloat=UIScreen.mainScreen().bounds.size.height
            self.ballRect=CGRectMake(160, screenheight - 100, 24, 24)
            self.playerBallView.frame=self.ballRect
            self.strokeCounter=0
            self.StrokeCount.text="杆数: \(strokeCounter) "
            
        }else{
            exit(1)
        }
    }
}
//
//  GameScene.swift
//  Galaxy
//
//  Created by Mac on 14-10-27.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import SpriteKit
import CoreMotion
import AVFoundation

class GameScene: SKScene {
    var playerShip:SKSpriteNode=SKSpriteNode(imageNamed: "ship.png")
    var enemyCount:Int=5
    var enemies:NSMutableArray=NSMutableArray(capacity: 5)
    var currentBullet:Int=0
    var playerBullets:NSMutableArray=NSMutableArray(capacity: 5)
    var mManager:CMMotionManager?=CMMotionManager()
    var scoreLabel:SKLabelNode=SKLabelNode()
    var playerScore:Int=0
    var audioEffect:AVAudioPlayer?=nil
    
    
    
    override func didMoveToView(view: SKView) {
        var background:SKSpriteNode=SKSpriteNode(imageNamed: "background2.png")
        background.position=CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        self.addChild(background)
        self.playerShip.position = CGPointMake(CGRectGetMidX(self.frame),CGRectGetMinY(self.frame) + self.playerShip.frame.size.height)
        self.addChild(self.playerShip)
        for(var i=0;i<enemyCount;++i){
            var enemyName:NSString="enemy0\((random() % 3)+1).png"
            var enemy=SKSpriteNode(imageNamed: enemyName)
            enemy.position = CGPointMake(25 + (CGFloat(i)*enemy.size.width), 400)
            enemy.hidden=false
            self.enemies.addObject(enemy)
            self.addChild(enemy)
        }
        for(var i=0;i<enemyCount;++i){
            var bullet=SKSpriteNode(imageNamed: "bullet.png")
            bullet.position = self.playerShip.position
            bullet.hidden = true
            self.playerBullets.addObject(bullet)
            self.addChild(bullet)
        }
        if((self.mManager?.accelerometerAvailable) == true){
            var alert:UIAlertView=UIAlertView()
            alert.title="Accelerometer Available "
            alert.addButtonWithTitle("Cancel")
            alert.show()
            self.mManager?.startAccelerometerUpdates()
        }else{
            var alert:UIAlertView=UIAlertView()
            alert.title="Sorry,No Accelerometer"
            alert.addButtonWithTitle("Cancel")
            alert.show()
        }
        self.physicsBody=SKPhysicsBody(edgeLoopFromRect:self.frame)
        self.playerShip.physicsBody=SKPhysicsBody(rectangleOfSize: self.playerShip.frame.size)
        self.playerShip.physicsBody?.dynamic=true
        self.playerShip.physicsBody?.affectedByGravity=false
        self.playerShip.physicsBody?.mass=0.2
        self.scoreLabel = SKLabelNode(fontNamed:"Chalkduster")
        self.scoreLabel.fontSize=30
        self.scoreLabel.horizontalAlignmentMode=SKLabelHorizontalAlignmentMode.Left
        self.scoreLabel.position=CGPointMake(30,CGRectGetMaxY(self.frame)-50)
        self.scoreLabel.text="\(playerScore)"
        self.addChild(self.scoreLabel)
        var soundName:NSString = "startup"
        self.playSoundEffect(soundName)
        
        
        
        
        
        
        
    }
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        var touch:UITouch=UITouch()
        for touch in touches{
            var playerBullet:SKSpriteNode=self.playerBullets.objectAtIndex(currentBullet) as SKSpriteNode
            currentBullet++
            if(currentBullet >= self.playerBullets.count){
                currentBullet=0
            }
            playerBullet.position = self.playerShip.position;
            playerBullet.hidden = false
            var firebulletAction:SKAction=SKAction.moveTo(CGPointMake(self.playerShip.position.x, self.frame.size.height), duration: 1)
            var endBulletAction:SKAction=SKAction.runBlock({
                playerBullet.removeAllActions();
                playerBullet.hidden=true
            })
            var firebulletAndDestroy:SKAction=SKAction.sequence([firebulletAction, endBulletAction])
            playerBullet.runAction(firebulletAndDestroy, withKey: "Fire")
        }
    }
    override func update(currentTime:CFTimeInterval){
        self.shipUpdates()
        self.collisionDetection()
    }
    func shipUpdates(){
        var data:CMAccelerometerData?=self.mManager?.accelerometerData
        var value:Double?=data?.acceleration.x
        
        if(value==nil){
            value=0
        }
        
        if(fabs(value!)>0.2)
        {
            var fvector=CGVectorMake(40.0*CGFloat(value!) , 0)
            self.playerShip.physicsBody?.applyForce(fvector)
        }
    }
    func collisionDetection(){
        var enemy:SKSpriteNode=SKSpriteNode()
        var senemy:SKSpriteNode=SKSpriteNode()
        for enemy in self.enemies{
            senemy=enemy as SKSpriteNode
            if(senemy.hidden==true){
                continue
            }
            var bullet:SKSpriteNode=SKSpriteNode()
            var sbullet:SKSpriteNode=SKSpriteNode()
            for bullet in self.playerBullets {
                sbullet=enemy as SKSpriteNode
                if(sbullet.hidden==true){
                    continue
                }
                if(bullet.intersectsNode(enemy as SKNode)){
                    sbullet.hidden=false
                    senemy.hidden=true
                    playerScore++
                    self.scoreLabel.text="\(playerScore)"
                    var soundName:NSString="impact"
                    self.playSoundEffect(soundName)
                    
                    
                    continue
                }
            }
        }
    }
    func playSoundEffect(effectName:NSString){
        var path=NSBundle.mainBundle().pathForResource(effectName, ofType: "wav")
        var pathURL=NSURL.fileURLWithPath(path!)
        audioEffect=AVAudioPlayer(contentsOfURL: pathURL,error: nil)
        audioEffect?.numberOfLoops=0
        audioEffect?.prepareToPlay()
        audioEffect?.play()
    }
    
    
    
}
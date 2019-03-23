//
//  ViewController.swift
//  Mini Golf
//
//  Created by Mac on 14-10-23.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var vc:MiniGolfViewController=MiniGolfViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        var swipL:UISwipeGestureRecognizer=UISwipeGestureRecognizer(target: self,action: Selector("left"))
        swipL.direction=UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(swipL)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func left(){
        var transiton=CATransition()
        transiton.duration=5.0
        transiton.type=kCATransitionPush
        transiton.subtype=kCATransitionFromRight
        vc=self.storyboard!.instantiateViewControllerWithIdentifier("pvc") as MiniGolfViewController
        self.view.addSubview(vc.view)
        self.view.layer.addAnimation(transiton, forKey: nil)
        
        
      

    }


}


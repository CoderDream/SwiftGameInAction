//
//  ViewController.swift
//  5-56
//
//  Created by Mac on 14-12-23.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var i:Int
        //循环
        for(i=0;i<11;i++){
            //判断i是否大于等于6
            if(i>=6){
                return							//使用return语句结束循环
            }
            println(i)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


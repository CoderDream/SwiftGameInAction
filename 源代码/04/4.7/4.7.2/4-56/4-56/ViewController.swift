//
//  ViewController.swift
//  4-56
//
//  Created by Mac on 14-12-29.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit
//定义结构
struct NewStruct{
    var x=0
    var y=0
}
//运算符的重载
prefix func -(vector:NewStruct)->NewStruct{
    return NewStruct(x:-vector.x,y:-vector.y)
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        
        let positive=NewStruct(x:20,y:100)				//实例化对象
        let negative = -positive						//实现一元减运算符的功能，即整数变负，负数变正
        //输出
        println(negative.x)
        println(negative.y)
        let alsoPositive = -negative					//实现一元减运算符的功能，即整数变负，负数变正
        //输出
        println(alsoPositive.x)
        println(alsoPositive.y)

    }
}


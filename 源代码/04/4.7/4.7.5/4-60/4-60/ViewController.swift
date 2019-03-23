//
//  ViewController.swift
//  4-60
//
//  Created by Mac on 14-12-29.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit
//定义结构
struct Vector2D {
    var x = 0.0
    var y = 0.0
}
infix operator +- {}						//定义中置自定义运算符
//定义自定义运算符的重载
func +- (left: Vector2D, right: Vector2D) -> Vector2D {
    return Vector2D(x: left.x + right.x, y: left.y - right.y)
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //实例化对象
        let firstVector = Vector2D(x: 1.0, y: 2.0)
        let secondVector = Vector2D(x: 3.0, y: 4.0)
        let plusMinusVector = firstVector +- secondVector
        println(plusMinusVector.x)
        println(plusMinusVector.y)

        
    }

   

}


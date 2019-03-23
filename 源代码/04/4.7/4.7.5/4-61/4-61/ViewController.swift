//
//  ViewController.swift
//  4-61
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
postfix operator ---- {}						//定义后置自定义运算符
//定义加法运算符的重载
func - (left: Vector2D, right: Vector2D) -> Vector2D {
    return Vector2D(x: left.x - right.x, y: left.y - right.y)
}
//定义加法复合赋值运算符的重载
func -= (inout left: Vector2D, right: Vector2D) {
    left = left - right
}
//定义自定义运算符的重载
postfix func ---- (inout vector: Vector2D) -> Vector2D {
    vector -= Vector2D(x: 10.0, y: 10.0)
    return vector
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var toIncrement = Vector2D(x: 3.0, y: 4.0)
        //实现自定义运算符的功能
        toIncrement----
        println(toIncrement.x)
        println(toIncrement.y)
        //实现自定义运算符的功能
        toIncrement----
        println(toIncrement.x)
        println(toIncrement.y)

    }

}


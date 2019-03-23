//
//  ViewController.swift
//  4-59
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
prefix operator *** {}				//定义前置自定义运算符
//定义乘法运算符的重载
func * (left: Vector2D, right: Vector2D) -> Vector2D {
    return Vector2D(x: left.x * right.x, y: left.y * right.y)
}
//定义乘法复合赋值运算符的重载
func *= (inout left: Vector2D, right: Vector2D) {
    left = left * right
}
//定义自定义运算符的重载
prefix func *** (inout vector: Vector2D) -> Vector2D {
    vector *= vector
    return vector
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var toBeDoubled = Vector2D(x: 8.0, y: 5.0)
        //实现自定义运算符的运算
        ***toBeDoubled
        println(toBeDoubled.x)
        println(toBeDoubled.y)
        //实现自定义运算符的运算
        ***toBeDoubled
        println(toBeDoubled.x)
        println(toBeDoubled.y)

    }



}


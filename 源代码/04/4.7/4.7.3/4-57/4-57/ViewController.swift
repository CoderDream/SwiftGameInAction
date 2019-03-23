//
//  ViewController.swift
//  4-57
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
//加法运算符的重载
func + (left: Vector2D, right: Vector2D) -> Vector2D {
    return Vector2D(x: left.x + right.x, y: left.y + right.y)
}
//复合赋值运算符的重载
func += (inout left: Vector2D, right: Vector2D) {
    left = left + right
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        var original = Vector2D(x: 1.0, y: 2.0)
        let vectorToAdd = Vector2D(x: 3.0, y: 4.0)
        original += vectorToAdd							//实现两个结构的相加，并赋值
        //输出
        println(original.x)
        println(original.y)
    }
}


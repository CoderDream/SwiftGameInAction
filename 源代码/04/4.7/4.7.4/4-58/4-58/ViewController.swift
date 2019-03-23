//
//  ViewController.swift
//  4-58
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
//定义“==”运算符的重载
func == (left: Vector2D, right: Vector2D) -> Bool {
    return (left.x == right.x) && (left.y == right.y)
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let one = Vector2D(x: 2.0, y: 3.0)
        let two = Vector2D(x: 2.0, y: 3.0)
        let three=Vector2D(x: 3.0, y: 3.0)
        //实现判断one和two对象是否相等
        if one==two{
            println("比较的两个结构相等")
        }else{
            println("比较的两个结构不相等")
        }
        //实现判断one和three对象是否相等
        if one==three{
            println("比较的两个结构相等")
        }else{
            println("比较的两个结构不相等")
        }

    }



}


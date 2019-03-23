//
//  ViewController.swift
//  4-55
//
//  Created by Mac on 14-12-29.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit
struct Vector2D {
    var x = 0.0
    var y = 0.0
}
func + (left: Vector2D, right: Vector2D) -> Vector2D {
    return Vector2D(x: left.x + right.x, y: left.y + right.y)
}
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let vector = Vector2D(x: 3.0, y: 1.0)
        let anotherVector = Vector2D(x: 8.0, y: 6.0)
        let combinedVector = vector + anotherVector					//实现加法运算
        //输出
        println(combinedVector.x)
        println(combinedVector.y)

        
    }
}


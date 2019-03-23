//
//  ViewController.swift
//  4-36
//
//  Created by Mac on 14-12-29.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //定义Size结构
        struct Size {
            var width = 0.0
            var height = 0.0
        }
        //定义Point结构
        struct Point {
            var x = 0.0
            var y = 0.0
        }
        //定义Rect结构
        struct Rect {
            var origin = Point()
            var size = Size()
            //自定义构造器
            init(origin: Point, size: Size) {
                self.origin = origin
                self.size = size
            }
            //自定义构造器
            init(center: Point, size: Size) {
                let originX = center.x - (size.width / 2)
                let originY = center.y - (size.height / 2)
                self.init(origin: Point(x: originX, y: originY), size: size)					//构造器代理
            }
        }
        let centerRect = Rect(center: Point(x: 4.0, y: 4.0),size: Size(width: 3.0, height: 3.0))
        println("矩形的原点为：")
        println(centerRect.origin.x)
        println(centerRect.origin.y)
        println("矩形的尺寸为：")
        println(centerRect.size.width)
        println(centerRect.size.height)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


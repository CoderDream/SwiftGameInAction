//
//  ViewController.swift
//  4.6.7
//
//  Created by Mac on 14-12-30.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit
//协议HasArea
@objc protocol HasArea {
    var area: Double { get }
}
//类Circle，遵守协议HasArea
class Circle: HasArea {
    let pi = 3.1415927
    var radius: Double
    //可读的计算属性
    var area: Double {
        return pi * radius * radius
    }
    //定义指定构造器
    init(radius: Double) {
        self.radius = radius
    }
}
//类Country，遵守协议HasArea
class Country: HasArea {
    var area: Double
    //定义指定构造器
    init(area: Double) {
        self.area = area
    }
}
//类Animal
class Animal {
    var legs: Int
    //定义指定构造器
    init(legs: Int) {
        self.legs = legs
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let objects = [Circle(radius: 2.0),Country(area: 243610),Animal(legs: 4)]
        //遍历数组
        let aa:[AnyObject] = [Circle(radius: 2.0),Country(area: 243610),Animal(legs: 4)]
        for item:AnyObject in aa {
            //判断是否遵守协议HasArea
            if  let objectWithArea = item as? HasArea {
                println(objectWithArea.area)
            }else{
                println("没有遵守协议HasArea")
            }
        }

       
    }

   

}


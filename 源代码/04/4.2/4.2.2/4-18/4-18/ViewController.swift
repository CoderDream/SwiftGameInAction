//
//  ViewController.swift
//  4-18
//
//  Created by Mac on 14-12-28.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit
class Car{
    var speed: Double = 0.0
}
//定义类AutomaticCar，作为Car的子类
class AutomaticCar: Car {
    var gear = 1
    override var speed: Double {
        //添加属性监视器
        didSet {
            gear = Int(speed)
            println(gear)
        }
    }
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let automatic = AutomaticCar()
        automatic.speed = 35.0
        automatic.speed = 100.0
        automatic.speed = 300.0

       
       
    }

 
}


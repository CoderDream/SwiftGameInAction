//
//  ViewController.swift
//  4-51
//
//  Created by Mac on 14-12-29.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit
protocol Name {
    var name: String{get}
}
//定义类NewClass，并实现Name协议
class NewClass:Name{
    var name:String{
        return "Hello"
    }
}
//定义类NewClass1
class NewClass1{
    var value:Name
    init(value:Name) {
        self.value = value
    }
}
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
   
        var newclass=NewClass1(value:NewClass())
        println(newclass.value.name)

        
    }

 
}


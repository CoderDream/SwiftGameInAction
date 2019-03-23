//
//  ViewController.swift
//  4-52
//
//  Created by Mac on 14-12-29.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit
protocol Name {
    var name: String{get}
}
//定义类NewClass1，并实现Name协议
class NewClass1:Name{
    var name:String{
        return "Swift"
    }
}
//定义类NewClass2，并实现Name协议
class NewClass2:Name{
    var name:String{
        return "Hello"
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
 
        let array:[Name]=[NewClass1(),NewClass2(),NewClass1()]
        var i=0
        //遍历
        for i=0;i<3;++i {
            println("array[\(i)]=\(array[i].name)")
        }

    }
}


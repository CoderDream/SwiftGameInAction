//
//  ViewController.swift
//  4-50
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
    var name:String="Swift"
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var value:Name=NewClass()
        println(value.name)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


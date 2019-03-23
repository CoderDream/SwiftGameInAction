//
//  ViewController.swift
//  4-49
//
//  Created by Mac on 14-12-29.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit
@objc protocol CounterProtocol {
    //定义可选成员
    optional func printlnCount(count: Int) -> Int
    optional var value: Int { get }
}
//定义协议的遵循者NewClass类
class NewClass:CounterProtocol{
    var value:Int{
        return 500
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var newclass=NewClass()
        println(newclass.value)

    }
}


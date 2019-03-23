//
//  ViewController.swift
//  4-46
//
//  Created by Mac on 14-12-29.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit
protocol NameProtocol{
    var name: String { get }						//声明只读的属性name
     class var age:Int{get}
}
class NewClass:NameProtocol{
    //定义协议中只读的实例属性name
    var name: String{
        return "Hello"
    }
    //定义协议中只读的类型属性age
    class var age:Int{
       return 20
    }

}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let newclass=NewClass()
        println(newclass.name)
        println(NewClass.age)
        
    }
}


//
//  ViewController.swift
//  4-38
//
//  Created by Mac on 14-12-29.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        class NewClass{
            var age: Int
            var name:String
            init(name: String, age: Int) {
                self.age = age
                self.name=name
            }
            //定义具有一个参数的便利构造器
            convenience init(name: String) {
                self.init(name: name, age: 15)
            }
        }
        let newclass1=NewClass(name:"Tom",age:25)
        println("name=\(newclass1.name)")
        println("age=\(newclass1.age)")
        let newclass2=NewClass(name:"Dive")						//调用便利构造器
        println("name=\(newclass2.name)")
        println("age=\(newclass2.age)")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


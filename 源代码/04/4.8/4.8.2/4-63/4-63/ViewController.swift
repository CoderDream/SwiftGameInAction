//
//  ViewController.swift
//  4-63
//
//  Created by Mac on 14-12-30.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        enum NewEnum<T>{
            //定义类型方法
            static func printvalue(value:T){
                println(value)
            }
        }
        //调用类型方法
        NewEnum<Int>.printvalue(5)					//输出整型
        NewEnum<String>.printvalue("Hello")			//输出字符串
        NewEnum<Float>.printvalue(10.2222)			//输出浮点型

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


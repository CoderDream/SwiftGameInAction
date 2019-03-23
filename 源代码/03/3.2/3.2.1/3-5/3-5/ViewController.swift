//
//  ViewController.swift
//  3-5
//
//  Created by Mac on 14-12-18.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let uvalue1:UInt=1000						//声明定义一个数据类型为无符号整型的常量
        let uvalue2:Int = -800						//声明定义一个数据类型为有符号整型的常量
        //输出常量值
        println(uvalue1)
        println(uvalue2)
        var value1:UInt=200							//声明定义一个数据类型为无符号整型的变量
        var value2:Int = -100						//声明定义一个数据类型为有符号整型的变量
        //输出变量值
        println(value1)
        println(value2)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


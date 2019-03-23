//
//  ViewController.swift
//  4-62
//
//  Created by Mac on 14-12-29.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //定义泛型函数swapTwoValue
        func swapTwoValue<T>(inout a: T, inout b: T){
            let temporaryA = a
            a = b
            b = temporaryA
        }
        var someInt = 3
        var anotherInt = 107
        println("交换前：someInt = \(someInt), anotherInt = \(anotherInt)")
        swapTwoValue(&someInt, &anotherInt)								//实现两个整数的交换
        println("交换后：someInt = \(someInt), anotherInt = \(anotherInt)")
        var someString = "Swift"
        var anotherString = "iOS 8"
        println("交换前：someString = \(someString), anotherString = \(anotherString)")
        swapTwoValue(&someString, &anotherString)						//实现两种字符串的交换
        println("交换后：someString = \(someString), anotherString = \(anotherString)")
        var someDouble = 13.5555
        var anotherDouble = 65.5555
        println("交换前：someDouble = \(someDouble), anotherDouble = \(anotherDouble)")
        swapTwoValue(&someDouble, &anotherDouble)						//实现两个双精度数据的交换
        println("交换后：someDouble = \(someDouble), anotherDouble = \(anotherDouble)")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


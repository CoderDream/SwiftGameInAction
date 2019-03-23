//
//  ViewController.swift
//  3-79
//
//  Created by Mac on 14-12-25.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        func makeIncrementor(forIncrement amount: Int) -> () -> Int {
            var runningTotal = 0
            //定义函数incrementor()，实现runningTotal的增加
            func incrementor() -> Int {
                runningTotal += amount
                return runningTotal
            }
            return incrementor
        }
        //赋值
        var a = makeIncrementor(forIncrement: 10)
        //输出
        println("输出a的增量")
        println(a())
        println(a())
        println(a())
        var b = makeIncrementor(forIncrement: 5)
        //赋值，输出
        println("输出b的增量")
        println(b())
        println(b())
        println(b())

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


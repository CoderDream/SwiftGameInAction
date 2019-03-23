//
//  ViewController.swift
//  3-23
//
//  Created by Mac on 14-12-19.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var a=10
        var b=5
        var c=a+b						//加法运算
        var d=a-b							//减少运算
        var e=a*b							//乘法运算
        var f=a/b							//除法运算
        var g=a%3                           //取余运算
        //输出结果
        println(c)
        println(d)
        println(e)
        println(f)
        println(g)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


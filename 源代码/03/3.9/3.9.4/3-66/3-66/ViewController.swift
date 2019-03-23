//
//  ViewController.swift
//  3-66
//
//  Created by Mac on 14-12-25.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
        func swapTwoInt(inout number1: Int, inout number2: Int) {
            //实现两个整数的交换
            let temp = number1
            number1 = number2
            number2 = temp
        }
        var a=6
        var b=8
        println("交换前")
        println("a=\(a)")
        println("b=\(b)")
        println("交换后")
        swapTwoInt(&a, &b)
        println("a=\(a)")
        println("b=\(b)")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


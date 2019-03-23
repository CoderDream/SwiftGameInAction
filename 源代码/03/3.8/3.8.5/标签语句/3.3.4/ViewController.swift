//
//  ViewController.swift
//  3.3.4
//
//  Created by Mac on 14-12-26.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var a=0
        var i=1
        loop:while a<=100{
            println("开始循环第\(i)次")
            switch (a){
            case 0...60:
                println("E")
            case 61...70:
                println("D")
            case 71...80:
                println("C")
                break loop
            case 81...90:
                println("B")
            default:
                println("A")
            }
            a+=10
            i++
            println("第\(i)次循环结束")
            

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


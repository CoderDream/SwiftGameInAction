//
//  ViewController.swift
//  6-70
//
//  Created by Mac on 14-12-25.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        func add(a: Int, b: Int) -> Int {
            return a + b
        }
        //两数相乘
        func multiply(a:Int,b:Int)->Int{
            return a*b
        }
        //输出结果
        func printresult(fun:(Int,Int)->Int,a:Int,b:Int){
            println(fun(a,b))
        }
        printresult(add, 3, 2)
        printresult(multiply, 3, 2)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


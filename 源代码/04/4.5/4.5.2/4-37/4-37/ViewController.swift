//
//  ViewController.swift
//  4-37
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
            var value1:Int
            var value2:Float
            var value3:String
            //定义带有三个参数的指定构造器
            init(i:Int,j:Float,k:String){
                value1=i
                value2=j
                value3=k
            }
        }
        let newclass=NewClass(i:200000,j:10,k:"Hello")						//实例化对象
        println("value1=\(newclass.value1)")
        println("value2=\(newclass.value2)")
        println("value3=\(newclass.value3)")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  4-65
//
//  Created by Mac on 14-12-30.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        class NewClass<T>{
            //定义实例方法printvalue
            func printvalue(value:T){
                println(value)
            }
        }
        let stringclass=NewClass<String>()					//实例化对象
        stringclass.printvalue("Swift")						//输出内容
        let intclass=NewClass<Int>()						//实例化对象
        intclass.printvalue(10)                             //输出内容

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


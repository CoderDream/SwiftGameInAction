//
//  ViewController.swift
//  4-2
//
//  Created by Mac on 14-12-26.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        class NewClass{
            var secondValue:String="Hello"
        }
        let newclass=NewClass()
        println("修改前：secondValue=\(newclass.secondValue)")
        newclass.secondValue="Swift"								//修改存储实现
        println("修改后：secondValue=\(newclass.secondValue)")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


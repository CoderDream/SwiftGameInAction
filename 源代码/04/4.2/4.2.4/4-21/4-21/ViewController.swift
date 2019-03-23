//
//  ViewController.swift
//  4-21
//
//  Created by Mac on 14-12-28.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        class NewClass1{
        }
        //定义类NewClass2，作为NewClass1的子类
        class NewClass2:NewClass1{
        }
        //定义类NewClass3，作为NewClass1的子类
        class NewClass3:NewClass1{
        }
        let library=[NewClass2(),NewClass2(),NewClass2(),NewClass3(),NewClass2(),NewClass2()]
        var newclass1Count=0
        var newclass2Count=0
        //遍历数组
        for item in library{
            //判断当前实例是否属于NewClass2
            if item is NewClass2{
                ++newclass1Count
            }
                //判断当前实例是否属于NewClass3
            else if item is NewClass3{
                ++newclass2Count
            }
        }
        println("NewClass2的实例有\(newclass1Count)个")
        println("NewClass3的实例有\(newclass2Count)个")

    }

  


}


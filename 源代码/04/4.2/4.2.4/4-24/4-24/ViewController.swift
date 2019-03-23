//
//  ViewController.swift
//  4-24
//
//  Created by Mac on 14-12-28.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
 
        class NewClass1{
            var director:String{
                return "NewClass1"
            }
        }
        //定义类NewClass2，作为NewClass1的子类
        class NewClass2:NewClass1{
            override var director:String{
                return "NewClass2"
            }
        }
        //向数组things中添加元素
        var things = [Any]()
        things.append(0)
        things.append(0.0)
        things.append(42)
        things.append(3.14159)
        things.append("hello")
        things.append(NewClass1())
        things.append(NewClass2())
        //遍历
        for thing in things {
            switch thing {
            case 0 as Int:
                println("0是整型")
            case 0.0 as Double:
                println("0.0是浮点型")
            case let someInt as Int:
                println("\(someInt)是一个整型值")
            case let someDouble as Double where someDouble > 0:
                println("\(someDouble)可能是一个浮点型值")
            case let someString as String:
                println("\(someString)是一个字符串")
            default:
                println("其它")
            }
        }
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


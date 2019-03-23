//
//  ViewController.swift
//  4-39
//
//  Created by Mac on 14-12-29.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        class NewClass1{
            var value1:Int=0
            var value2:String=""
            //指定构造器
            init(val1:Int,val2:String) {
                value1=val1
                value2=val2

            }
            convenience init(){
                self.init(val1:100,val2:"无内容")
            }

        }
        //子类NewClass1
        class NewClass2:NewClass1{
        }
        let newclass1=NewClass2(val1: 5, val2: "Hello")
        println(newclass1.value1)
        println(newclass1.value2)
        let newclass2=NewClass2()
        println(newclass2.value1)
        println(newclass2.value2)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


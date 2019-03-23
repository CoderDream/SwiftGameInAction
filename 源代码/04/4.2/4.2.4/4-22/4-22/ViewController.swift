//
//  ViewController.swift
//  4-22
//
//  Created by Mac on 14-12-28.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        class NewClass1{
        }
        //定义NewClass2类，作为NewClass1的子类
        class NewClass2:NewClass1{
            var str: String="Swift"
        }
        let library = NewClass2()
        let class2=library as NewClass2							//转换
        println("NewClass2: \(class2.str)")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


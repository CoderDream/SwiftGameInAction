//
//  ViewController.swift
//  4-23
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
        //定义类NewClass2，作为NewClass1的子类
        class NewClass2:NewClass1{
            var str: String="NewClass2"
        }
        //定义类NewClass3，作为NewClass1的子类
        class NewClass3:NewClass1{
            var str: String="NewClass3"
        }
        let library = [NewClass2(),NewClass3(),NewClass3()]
        //遍历
        for item in library{
            //判断是否转为NewClass2
            if let class2=item as?NewClass2{
                println(class2.str)
                //判断是否转为NewClass3
            }else if let class3=item as? NewClass3 {
                println(class3.str)
            }
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


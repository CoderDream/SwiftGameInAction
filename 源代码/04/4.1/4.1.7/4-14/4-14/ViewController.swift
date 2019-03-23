//
//  ViewController.swift
//  4-14
//
//  Created by Mac on 14-12-27.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        class Residence {
            //定义一个可选类型的类型属性numberOfRooms
            class var numberOfRooms:Int?{
                return 100
            }
            var number:Int?=nil
            
        }
        let newClass=Residence()
        if let a=Residence.numberOfRooms? {						//调用可选链接
            println("目标有值")
        }else{
            println("目标为空")
        }
        if let a=newClass.number? {								//可选链接
            println("目标有值")
        }else{
            println("目标为空")
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


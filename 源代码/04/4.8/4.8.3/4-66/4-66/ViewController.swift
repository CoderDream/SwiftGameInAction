//
//  ViewController.swift
//  4-66
//
//  Created by Mac on 14-12-30.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        class NewClass<T,U,W>{
            func printvalue(value1:T,value2:U,value3:W){
                println(value1)
                println(value2)
                println(value3)
            }
        }
        let newclass=NewClass<Int,String,Double>()
        newclass.printvalue(100,value2:"Swift",value3:88.88)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


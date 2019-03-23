//
//  ViewController.swift
//  6-69
//
//  Created by Mac on 14-12-25.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        func add(value1:Int,value2:Int)->Int{
            return value1+value2
        }
        var function:(Int,Int)->Int=add
        println(function(10,10))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


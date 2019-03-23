//
//  ViewController.swift
//  4-1
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
            let value1=50
            let value2=10.00
            let value3="Hello,Swift"
        }
        var newclass=NewClass()
        println("value1=\(newclass.value1)")
        println("value2=\(newclass.value2)")
        println("value3=\(newclass.value3)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  4-7
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
            var str="Hello"
            func printHello(){
                for index in str {
                    println(index)
                }
                
            }
        }
        var newvlass=NewClass()
        newvlass.printHello()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


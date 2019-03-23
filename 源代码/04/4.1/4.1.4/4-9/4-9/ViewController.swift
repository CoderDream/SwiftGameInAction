//
//  ViewController.swift
//  4-9
//
//  Created by Mac on 14-12-27.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        class NewClass{
            class func printSwift(){
                println("Swift")
            }
            class func add(value1:Int,value2:Int)->Int{
                return value1+value2
            }
            
            
        }
        NewClass.printSwift()
        println(NewClass.add(20, value2: 40))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


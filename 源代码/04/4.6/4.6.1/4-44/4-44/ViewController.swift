//
//  ViewController.swift
//  4-44
//
//  Created by Mac on 14-12-29.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit
class NewClass{
    
    
}
extension NewClass{
    func printStr(value:String){
        for i in value {
            println(i)
        }
    }
    class func add(value1:Int,value2:Int)->Int{
        return value1+value2
    }
    
}
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var newclass=NewClass()
        newclass.printStr("Hello")
        println(NewClass.add(50, value2: 100))
    }



}


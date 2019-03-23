//
//  ViewController.swift
//  4-47
//
//  Created by Mac on 14-12-29.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit
protocol NewProtocol{
    func random() -> Double
    class func printNumber(i:Int)
}
class NewClass:NewProtocol{
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0

    func random() -> Double {
        lastRandom = ((lastRandom * a + c) % m)
        return lastRandom / m
    }
    class func printNumber(i:Int){
        println(i)
    }


    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let newclass=NewClass()
        println(newclass.random())
        NewClass.printNumber(5)

        
    }


}


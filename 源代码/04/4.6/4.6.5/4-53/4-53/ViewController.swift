//
//  ViewController.swift
//  4-53
//
//  Created by Mac on 14-12-29.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit
protocol NewProtocol1{
    func printHello()
}
protocol NewProtocol2:NewProtocol1{
    func printSwift()
}
class NewClass:NewProtocol2 {
    func printHello(){
        println("Hello")
    }
    func printSwift() {
        println("Swift")
    }

}
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let newclass=NewClass()
        newclass.printHello()
        newclass.printSwift()
    }
}


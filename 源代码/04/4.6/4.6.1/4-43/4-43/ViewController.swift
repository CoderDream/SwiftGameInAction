//
//  ViewController.swift
//  4-43
//
//  Created by Mac on 14-12-29.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit
struct NewStruct {
    var red:Double
    var green:Double
    var blue:Double
    
}
extension NewStruct{
    init(Red: Double, Green: Double, Blue: Double) {
        red = Red
        green = Green
        blue = Blue
    }
    
    
}



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let magenta = NewStruct(Red: 1.0, Green: 0.0, Blue: 1.0)
        println("red=\(magenta.red)")
        println("green=\(magenta.green)")
        println("blue=\(magenta.blue)")
    }
}


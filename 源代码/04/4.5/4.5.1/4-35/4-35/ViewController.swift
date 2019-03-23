//
//  ViewController.swift
//  4-35
//
//  Created by Mac on 14-12-29.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        struct Color {
            var red:Double
            var green:Double
            var blue:Double
            //带有三个参数的构造器
            init(Red: Double, Green: Double, Blue: Double) {
                red   = Red
                green = Green
                blue  = Blue
            }
        }
        let magenta = Color(Red: 1.0, Green: 0.0, Blue: 1.0)
        println("red=\(magenta.red)")
        println("green=\(magenta.green)")
        println("blue=\(magenta.blue)")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  3-28
//
//  Created by Mac on 14-12-20.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var a:UInt8=0b11111100
        var b:UInt8=0b00111111
        var c=a&b
        println(c)
        var d=a|b
        println(d)
        var e=a^b
        println(e)
        var f = ~a
        println(f)
        var g=a<<4
        println(g)
        var h=b>>4
        println(h)
        
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  3-26
//
//  Created by Mac on 14-12-19.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var a=10
        var b=5
        var c=a>b
        println(c)
        var d=a<b
        println(d)
        var e = a != b
        println(e)
        var f = a == b
        println(f)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


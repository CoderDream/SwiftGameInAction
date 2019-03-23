//
//  ViewController.swift
//  3-31
//
//  Created by Mac on 14-12-21.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var a:Int?=10
        println(a)
        println(a!)
        a! += 20
        println(a!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


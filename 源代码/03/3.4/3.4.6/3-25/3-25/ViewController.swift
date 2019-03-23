//
//  ViewController.swift
//  3-25
//
//  Created by Mac on 14-12-19.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var value=10
        println(value)
        println(--value)								//前缀自减
        println(value)
        println(value--)								//后缀自减
        println(value)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


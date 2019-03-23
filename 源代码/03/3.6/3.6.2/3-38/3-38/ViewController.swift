//
//  ViewController.swift
//  3-38
//
//  Created by Mac on 14-12-21.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var a:String="Hello World"
        println(countElements(a))
        println(a.uppercaseString)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


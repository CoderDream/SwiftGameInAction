//
//  ViewController.swift
//  3-35
//
//  Created by Mac on 14-12-21.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let a:UInt8=200
        let b:UInt16=2000
        let c=UInt16(a)+b									//转换
        println(c)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


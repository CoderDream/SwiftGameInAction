//
//  ViewController.swift
//  3-12
//
//  Created by Mac on 14-12-18.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let decimalInteger = 17
        let binaryInteger = 0b10001        							//采用二进制表示17
        let octalInteger = 0o21             							//采用八进制表示17
        let hexadecimalInteger = 0x11     							//采用十六进制表示17
        println(decimalInteger)
        println(binaryInteger)
        println(octalInteger)
        println(hexadecimalInteger )

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


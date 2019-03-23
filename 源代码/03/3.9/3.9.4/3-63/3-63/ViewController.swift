//
//  ViewController.swift
//  3-63
//
//  Created by Mac on 14-12-25.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        func subtraction(minuend a:Int=90, subtrahend b:Int=24){
            var c=a-b
            println("两数相减最后结果为：\(c)")
        }
        subtraction()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


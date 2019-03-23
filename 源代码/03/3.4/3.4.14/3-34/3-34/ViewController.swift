//
//  ViewController.swift
//  3-34
//
//  Created by Mac on 14-12-21.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var minvalue=UInt8.min
        minvalue = minvalue &- 1
        println(minvalue)
        var maxvalue=Int8.max
        maxvalue = maxvalue &+ 1
        println(maxvalue)
        var x=0
        var y=10 &/ x
        println(y)


        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


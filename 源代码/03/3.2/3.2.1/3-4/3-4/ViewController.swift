//
//  ViewController.swift
//  3-4
//
//  Created by Mac on 14-12-18.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let minValue1=UInt8.min
        let maxValue1=UInt8.max
        println("UInt8的最小值为\(minValue1)")
        println("UInt8的最大值为\(maxValue1)")
        let minValue2=Int8.min
        let maxValue2=Int8.max
        println("Int8的最小值为\(minValue2)")
        println("Int8的最大值为\(maxValue2)")


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


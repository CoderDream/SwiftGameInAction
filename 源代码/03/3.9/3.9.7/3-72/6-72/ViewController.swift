//
//  ViewController.swift
//  6-72
//
//  Created by Mac on 14-12-25.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let maxvalue=max(2, 1, 1000, 100,500)
        println(maxvalue)
        var array=[10,1,6,7,8,]
        let minvalue=minElement(array)
        println(minvalue)
        sort(&array)
        println(array)
        var arr=[2,8,9,5]
        println(reverse(arr))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


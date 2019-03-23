//
//  ViewController.swift
//  3-65
//
//  Created by Mac on 14-12-25.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        func midvalue(var value:Int){
            value=value/2
            println("中间数为：\(value)")
            
            
        }
        midvalue(50)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


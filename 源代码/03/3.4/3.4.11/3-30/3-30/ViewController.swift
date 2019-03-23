//
//  ViewController.swift
//  3-30
//
//  Created by Mac on 14-12-20.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let a=sizeof(Int)
        println(a)
        let b=sizeof(Float)
        println(b)
        let c=sizeof(Character)
        println(c)
        let d=sizeof(String)
        println(d)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


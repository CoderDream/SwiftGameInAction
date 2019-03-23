//
//  ViewController.swift
//  4-58
//
//  Created by Mac on 14-12-23.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        func hello(Name: String){
            println("你好,\(Name)")
        }
        let personName1="杨过"
        hello(personName1)										//调用
        let personName2="小龙女"
        hello(personName2)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  3-36
//
//  Created by Mac on 14-12-21.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let a=3
        let b=10.555555
        let c=Double(a)+b								//将整数转换为Double类型的数据
        println(c)
        let d:Float=10.22
        let e=Float(a)+d								//将整数转为Float类型的数据
        println(e)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


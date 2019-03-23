//
//  ViewController.swift
//  3-40
//
//  Created by Mac on 14-12-22.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var a=[1,2,3,4,5,6]
        println("a数组的元素个数：\(a.count)")
        a += [7]
        println(a)
        a.removeLast()
        println(a)
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


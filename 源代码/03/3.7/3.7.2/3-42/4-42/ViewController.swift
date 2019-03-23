//
//  ViewController.swift
//  4-42
//
//  Created by Mac on 14-12-22.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var a=[1:"a",2:"b",3:"c"]
        println(a)
        
        
        a[4]="d"
        println(a)
        
        a.removeValueForKey(3)						//删除
        println(a)

        
        
        var value=a[2]
        println(value)

        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


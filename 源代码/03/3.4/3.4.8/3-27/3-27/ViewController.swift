//
//  ViewController.swift
//  3-27
//
//  Created by Mac on 14-12-19.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let a = 2<5 && 7>5
        println(a)
        let b = 2>5 && 7>5
        println(b)
        let c = 2>5 || 7>5
        println(c)
        let d = 2>5 || 7<5
        println(d)
        let e = 2<5 || 7<5
        println(e)
        let f = !(7<10)
        println(f)
        let g = !(7>10)
        println(g)

        
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  4-55
//
//  Created by Mac on 14-12-23.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let str="s"
        switch (str){
            case "s":
                println("S")
                fallthrough
            case "w":
                println("w")
                fallthrough
            case "i":
                println("i")
                fallthrough
            case "f":
                println("f")
                fallthrough
            default:
                println("t")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


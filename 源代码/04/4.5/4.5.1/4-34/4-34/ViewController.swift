//
//  ViewController.swift
//  4-34
//
//  Created by Mac on 14-12-29.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        struct NewStruct{
            var width=20
            var height=66
        }
        let newstruct1=NewStruct()
        println("\(newstruct1.width),\(newstruct1.height)")
        let newstruct2=NewStruct(width:500,height:100)
        println("\(newstruct2.width),\(newstruct2.height)")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


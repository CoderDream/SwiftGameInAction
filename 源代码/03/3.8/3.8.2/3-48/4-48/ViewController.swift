//
//  ViewController.swift
//  4-48
//
//  Created by Mac on 14-12-22.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let grade="C"
        switch(grade){
        case "A":
            println("90~100")
        case "B":
            println("80~90")
        case "C":
            println("70~80")
        case "D":
            println("60~70")
        default:
            println("60分以下")
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


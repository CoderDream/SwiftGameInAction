//
//  ViewController.swift
//  4-28
//
//  Created by Mac on 14-12-28.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        enum Digital:Int{
            case one=1
            case two=2
            case three=3

        }
        if let onemember=Digital.fromRaw(2){
            let a=onemember
            switch a{
                case .one:
                    println("one")
                case .two:
                    println("two")
                case .three:
                    println("three")
            }
        }
     

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


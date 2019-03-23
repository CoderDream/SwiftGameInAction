//
//  ViewController.swift
//  4-27
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
            case four=4
            case five=5
            
        }
        let onevalue=Digital.one.toRaw()
        println(onevalue)
        let fivevalue=Digital.five.toRaw()
        println(fivevalue)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


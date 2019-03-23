//
//  ViewController.swift
//  4-3
//
//  Created by Mac on 14-12-26.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        class NewClass{
            class var value:String{
                return "Swift"
            }
        }
        for index in NewClass.value{
            println(index)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


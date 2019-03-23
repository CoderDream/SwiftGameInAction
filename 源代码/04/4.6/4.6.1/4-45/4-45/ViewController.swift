//
//  ViewController.swift
//  4-45
//
//  Created by Mac on 14-12-29.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit
class NewClass{
    
}
extension NewClass{
    subscript(index: Int,value:Int) -> Int {
        return index+value
    }

}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
     
        var newclass=NewClass()
        println(newclass[2,8])
    }
}


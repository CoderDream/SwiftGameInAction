//
//  ViewController.swift
//  4-42
//
//  Created by Mac on 14-12-29.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit
class NewClass{
    
}
extension NewClass{
    var value1:String{
        return "Hello,Swift"
    }
    
    class var value2:Double{
        return 1000
    }
    
    
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
   
        var newclass=NewClass()
        println("value1=\(newclass.value1)")
        println("value2=\(NewClass.value2)")
 

      
    }
}


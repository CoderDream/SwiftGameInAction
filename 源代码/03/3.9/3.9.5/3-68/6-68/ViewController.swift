//
//  ViewController.swift
//  6-68
//
//  Created by Mac on 14-12-25.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        func maxvalue(value1:Int,value2:Int,value3:String,value4:String)->(Int,String){
            var maxInt=0
            var maxString:String
            if(value1<value2){
                maxInt=value2
            }else{
                maxInt=value1
            }
            
            if(value3<value4){
                maxString=value4
            }else{
                maxString=value3
            }
            return (maxInt,maxString)
            
        }
        println(maxvalue(5, 1, "Hello", "Swift"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


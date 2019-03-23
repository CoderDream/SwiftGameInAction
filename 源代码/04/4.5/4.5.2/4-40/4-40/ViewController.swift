//
//  ViewController.swift
//  4-40
//
//  Created by Mac on 14-12-29.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        class NewClass1{
            var value1:Int=0
            var value2:Int=0
            init(val1:Int,val2:Int) {
                value1=val1
                value2=val2
            }
        }
        class NewClass2:NewClass1{
            var value=0
            override init(val1:Int,val2:Int) {
                super.init(val1:200,val2:600)
              
             
            }
        }
        let newclass1=NewClass2(val1: 8, val2: 2)
        println(newclass1.value1)
        println(newclass1.value2)
        


        

        
   

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


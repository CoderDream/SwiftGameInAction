//
//  ViewController.swift
//  4-33
//
//  Created by Mac on 14-12-28.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        struct SomeStructure{
            func maxvalue(value1:Int,value2:Int)->Int{
                return max(value1, value2)
                
            }
            static func desc(value:[Int]){
                for i in reverse(value){
                    println(i)
                }

            }
        }
        let newstruct=SomeStructure()
        println(newstruct.maxvalue(100,value2:5))
        let arry=[1,0,0,8,6]
        SomeStructure.desc(arry)
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


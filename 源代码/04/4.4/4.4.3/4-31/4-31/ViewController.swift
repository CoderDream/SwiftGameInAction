//
//  ViewController.swift
//  4-31
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
            //定义存储属性
            let value1:Int=20
            var value2:Int{
                return 500
            }
            static var str: String {
                return "Struct"
            }
            

            
      
        }
        let newstruct=SomeStructure()
        //访问存储属性
        println(newstruct.value1)
        println(newstruct.value2)
        println(SomeStructure.str)
        
        


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


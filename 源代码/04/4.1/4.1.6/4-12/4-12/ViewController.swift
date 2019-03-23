//
//  ViewController.swift
//  4-12
//
//  Created by Mac on 14-12-27.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        class NewClass1 {
            class func printstr(str:String){
                
                println(str)
            }
      
            class NewClass2{
                
                class var str:String{
                    return "Swift"
                }
            }
        
            class NewClass3{
                class var str:String{
                    return "Hello"
                }
            }
         
            class NewClass4{
                class var str:String{
                    return "World"
                }
            }
        }
        //调用
        NewClass1.printstr(NewClass1.NewClass2.str)
        NewClass1.printstr(NewClass1.NewClass3.str)
        NewClass1.printstr(NewClass1.NewClass4.str)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  4-13
//
//  Created by Mac on 14-12-27.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        class NewClass {
            class func printstr(str:String){
                println(str)
            }
            class StrClass{
                class var str:String{
                    return "China"
                }
                class Str1Class{
                    class var str:String{
                        return "Hello"
                    }
                }
                class Str2Class{
                    class var str:String{
                        return "Swift"
                    }
                }
                class Str3Class{
                    class var str:String{
                        return "World"
                    }
                }
            }
        }
        //调用
        NewClass.printstr(NewClass.StrClass.str)
        NewClass.printstr(NewClass.StrClass.Str1Class.str)
        NewClass.printstr(NewClass.StrClass.Str2Class.str)
        NewClass.printstr(NewClass.StrClass.Str3Class.str)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


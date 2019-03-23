//
//  ViewController.swift
//  4-30
//
//  Created by Mac on 14-12-28.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        enum NewEnum:Int{
            case one=1
            case two=2
            var value1:Int{
                return 100
            }
            static var value2:Int{
                return 10000
            }
            subscript(index:Int)->String{
                switch index{
                    case 1:
                        return "one"
                    case 2:
                        return "two"
                    default:
                        return "没有对应的成员"

                }

            }
            func addValue(i:NewEnum,j:NewEnum)->Int{
                var sum=i.toRaw()+j.toRaw()
                return sum
            }
            static func printstr(){
                println("NewEnum")
            }
            
        }
        let a=NewEnum.one
        println(a.value1)
        println(NewEnum.value2)
        println(a[1])
        println(a[5])
        a.addValue(a, j: NewEnum.two)
        NewEnum.printstr()
        
        
    }

  

}


//
//  ViewController.swift
//  4-16
//
//  Created by Mac on 14-12-27.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        class NewClass1{
            let value=100						//存储属性
            //计算属性
            var clastr:String{
                return "Calculate property"
            }
            //类型属性
            class var tystr:String{
                return "Type property"
            }
            
            var english:Int=100
            var chinese:Int=89
            var math:Int=98
            //定义下标脚本
            subscript(index:Int)->Int{
                switch index{
                    case 0:
                        return english
                    case 1:
                        return chinese
                    case 2:
                        return math
                    default:
                        return 0
                }
            }
            func printvalue(){
                println(value)
            }
            //类型方法，功能为输出字符串
            class func printTypeFunc(){
                println("Type Func")
            }

        }
        //定义NewClass2，作为NewClass1的子类
        class NewClass2:NewClass1{
        }
        let newClass2=NewClass2()				//实例化NewClass2类实例newClass2
        //输出newClass2中的属性内容
        println(newClass2.value)	
        println(newClass2.clastr)
        println(NewClass2.tystr)
        //调用下标脚本，并输出
        println(newClass2[2])
        println(newClass2[10])
        newClass2.printvalue()                  //使用父类中的实例方法
        NewClass2.printTypeFunc()



    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


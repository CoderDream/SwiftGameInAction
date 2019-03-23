//
//  ViewController.swift
//  3-77
//
//  Created by Mac on 14-12-25.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        func copare(arr:[Int],value:Int,cb:(Num:Int,Value:Int)->Bool)->Bool{
            //遍历数组
            for item in arr{
                //判断闭是否为真
                if(cb(Num: item,Value: value)){
                    return true
                }
            }
            return false
        }
        var array = [20,80,100,50,20]
        //使用闭包判断是否在数组中有大于500的元素
        var v1=copare(array,500,{(num:Int,value:Int)->Bool in
            return num>value
        })
        //判断结果并输出
        if  v1==true {
            println("数组array中有比500大的元素")
        }else{
            println("数组array中没有比500大的元素")
        }
        //使用闭包判断是否在数组中有大于40的元素
        var v2=copare(array,40,{(num:Int,value:Int)->Bool in
            return num>value
        })
        //判断结果并输出
        if  v2==true {
            println("数组array中有比40大的元素")
        }else{
            println("数组array中没有比40大的元素")
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


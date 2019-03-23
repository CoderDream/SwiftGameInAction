//
//  ViewController.swift
//  6-73
//
//  Created by Mac on 14-12-25.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        func f1(q:Int)->Int{
            var c:Int=1
            var i:Int
            for i=1;i<=q;++i{
                c=c*i
            }
            return c;									//获取阶乘的值
        }
       
        func f2(p:Int)->Int{
            var k:Int
            var r:Int
            k=p*p										//求平方
            r=f1(k) 									//调用函数f2()，计算阶乘
            return r 									//获取平方后阶乘的值
        }
        //求阶乘
        var i:Int
        var s:Int=0
        for i=2;i<=3;i++ {
            s=s+f2(i);
        }

        println("s=\(s)")


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


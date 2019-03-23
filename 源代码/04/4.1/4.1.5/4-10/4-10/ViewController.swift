//
//  ViewController.swift
//  4-10
//
//  Created by Mac on 14-12-27.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        class Score{
            var english:Int=100
            var chinese:Int=80
            var math:Int=70
            //定义下标脚本
            subscript(index:Int)->Int{
                get{
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
            }
        }
        var myscore=Score()
        var sum:Int=0
        var i:Int=0
        //遍历
        for i=0;i<3;++i{
            sum+=myscore[i]
        }
        println(sum)
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


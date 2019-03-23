//
//  ViewController.swift
//  4-32
//
//  Created by Mac on 14-12-28.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        struct Score {
            let Math=98
            let English=100
            let Chinese=60
            //定义下标脚本
            subscript(index: Int) -> Int {
                switch index{
                    case 0:
                        return Math
                    case 1:
                        return English
                    case 2:
                        return Chinese
                    default:
                        return 0
                }
            }
        }
        let value=Score()
        var i=0
        var results=0
        //遍历访问
        for i;i<3;++i{
            results+=value[i]
        }
        println("三门课的成绩的平均值=\(results/3)")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


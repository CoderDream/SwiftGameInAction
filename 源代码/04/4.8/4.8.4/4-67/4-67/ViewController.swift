//
//  ViewController.swift
//  4-67
//
//  Created by Mac on 14-12-30.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //定义泛型函数，此函数的类型参数T必须要遵守Equatable协议
        func findIndex<T: Equatable>(array: [T], valueToFind: T) -> Int? {
            //遍历数据
            for (index, value) in enumerate(array) {
                //判断是否相等
                if value == valueToFind {
                    return index
                }
            }
            return nil
        }
        //判断在数据[3.14159, 0.1, 0.25]中是否包含9.3
        let doubleIndex = findIndex([3.14159, 0.1, 0.25], 9.3)
        println(doubleIndex)
        //判断在数据["Mike", "Malcolm", "Andrea"]中是否包含"Andrea"
        let stringIndex = findIndex(["Mike", "Malcolm", "Andrea"], "Andrea")
        println(stringIndex)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


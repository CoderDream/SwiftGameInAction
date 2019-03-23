//
//  ViewController.swift
//  4-11
//
//  Created by Mac on 14-12-27.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
        class NewClass{
            let rows: Int = 0, columns: Int=0
            var grid: [Double]
            //初始化方法
            init(rows: Int, columns: Int) {
                self.rows = rows
                self.columns = columns
                grid = Array(count: rows * columns, repeatedValue: 0.0)
            }
            func indexIsValidForRow(row: Int, column: Int) -> Bool {
                return row >= 0 && row < rows && column >= 0 && column < columns
            }
            //下标脚本
            subscript(row: Int, column: Int) -> Double {
                get {
                    assert(indexIsValidForRow(row, column: column), "Index out of range")
                    return grid[(row * columns) + column]
                }
                set {
                    assert(indexIsValidForRow(row, column: column), "Index out of range")
                    grid[(row * columns) + column] = newValue
                }
            }
        }
        var matrix = NewClass(rows: 2, columns: 2)
        println("没有赋值前")
        println(matrix[0,0])
        println(matrix[0,1])
        println(matrix[1,0])
        println(matrix[1,1])
        println("赋值后")
        matrix[0,0]=1.0
        matrix[0,1]=5.6
        matrix[1,0]=2.4
        matrix[1,1]=3.2
        println(matrix[0,0])
        println(matrix[0,1])
        println(matrix[1,0])
        println(matrix[1,1])

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


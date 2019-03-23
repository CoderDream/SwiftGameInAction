//
//  ViewController.swift
//  4-64
//
//  Created by Mac on 14-12-30.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //定义泛型结构Stack
        struct Stack<T> {
            var items = [T]()
            //定义可变方法
            mutating func push(item: T) {
                items.append(item)
            }
            //定义可变方法
            mutating func pop() -> T {
                return items.removeLast()
            }
        }
        var stackOfStrings = Stack<String>()
        println("入栈")
        //进栈
        stackOfStrings.push("one")
        stackOfStrings.push("two")
        stackOfStrings.push("three")
        stackOfStrings.push("four")
        for index in stackOfStrings.items {
            println(index)
        }
        println("出栈")
        //出栈
        let fromTheTop = stackOfStrings.pop()
        for index in stackOfStrings.items {
            println(index)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


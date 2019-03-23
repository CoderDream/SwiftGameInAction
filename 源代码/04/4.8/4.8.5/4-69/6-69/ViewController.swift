//
//  ViewController.swift
//  6-69
//
//  Created by Mac on 14-12-30.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit
//定义协议
protocol Container {
    typealias ItemType
    mutating func append(item: ItemType)
    var count: Int { get }
}
//定义泛型结构Stack
struct Stack<T>{
    var items = [T]()
}
//扩展泛型结构，并遵守Container协议
extension Stack: Container {
    //定义可变方法push()，实现进栈的功能
    mutating func push(item: T) {
        items.append(item)
    }
    //定义可变方法pop()，实现出栈的功能
    mutating func pop() -> T {
        return items.removeLast()
    }
    //定义可变方法append ()，实现进栈的功能
    mutating func append(item: T) {
        self.push(item)
    }
    //定义计算属性count，实现栈中元素个数的计算
    var count: Int {
        return items.count
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var pushstack = Stack<Int>()
        //进栈
        pushstack.push(1)
        pushstack.push(2)
        pushstack.push(3)
        println("现在一共有\(pushstack.count)个元素")
        //出栈
        var popstack=pushstack.pop()
        println("出栈后剩余\(pushstack.count)个元素")

    }
}


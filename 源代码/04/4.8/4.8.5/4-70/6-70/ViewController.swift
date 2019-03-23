//
//  ViewController.swift
//  6-70
//
//  Created by Mac on 14-12-30.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit
//定义协议Container
protocol Container {
    typealias ItemType
    mutating func append(item: ItemType)
    var count: Int { get }
    subscript(i: Int) -> ItemType { get }
}

//定义泛型结构Stack
struct Stack<T>: Container {
    var items = [T]()
    //定义可变方法push，实现进栈的功能
    mutating func push(item: T) {
        items.append(item)
    }
    //定义可变方法pop，实现出栈的功能
    mutating func pop() -> T {
        return items.removeLast()
    }
    //定义可变方法append，实现进栈的功能
    mutating func append(item: T) {
        self.push(item)
    }
    //定义计算属性count
    var count: Int {
        return items.count
    }
    //定义下标脚本
    subscript(i: Int) -> T {
        return items[i]
    }
}
func allItemsMatch<C1: Container, C2: Container where C1.ItemType == C2.ItemType, C1.ItemType: Equatable>(someContainer: C1, anotherContainer: C2) -> Bool {
    // 检查两个Container的元素个数是否相同
    if someContainer.count != anotherContainer.count {
        return false
    }
    // 检查两个Container相应位置的元素彼此是否相等
    for i in 0..<someContainer.count {
        if someContainer[i] != anotherContainer[i] {
            return false
        }
    }
    // 如果所有元素检查都相同则返回true
    return true
}


class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var stackOfStrings1 = Stack<String>()
        //进栈
        stackOfStrings1.push("one")
        stackOfStrings1.push("two")

        var stackOfStrings2 = Stack<String>()
        //进栈
        stackOfStrings2.push("1")
        stackOfStrings2.push("2")
        //判断
        if allItemsMatch(stackOfStrings1,stackOfStrings2){
            println("所有项都匹配")
        }else{
            println("不是所有项都匹配")
        }

    }

 }


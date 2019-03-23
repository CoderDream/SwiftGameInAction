//
//  ViewController.swift
//  4-54
//
//  Created by Mac on 14-12-29.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit
protocol NamedProtocol {
    var name: String { get }
}
//定义协议AgedProtocol
protocol AgedProtocol {
    var age: Int { get }
}
//定义结构Person
struct Person: NamedProtocol, AgedProtocol {
    var name: String
    var age: Int
}
//定义函数
func wishHappyBirthday(celebrator: protocol<NamedProtocol, AgedProtocol>) {
    println(" \(celebrator.name)生日快乐 - 你\(celebrator.age)岁了!")
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let birthdayPerson = Person(name: "Tom", age: 100)
        wishHappyBirthday(birthdayPerson)

    }
}


//
//  ViewController.swift
//  4-48
//
//  Created by Mac on 14-12-29.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit
protocol Togglable {
    mutating func toggle()							//定义可变方法
}
enum OnOffSwitch:Int,Togglable {
    case Off=0
    case On=1
    mutating func toggle() {
        switch self {
        case .Off:
            self = On
            println(self.toRaw())
        case .On:
            self = Off
            println(self.toRaw())
        }
    }
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        var lightSwitch = OnOffSwitch.On
        println(OnOffSwitch.On.toRaw())
        lightSwitch.toggle()
    }
}


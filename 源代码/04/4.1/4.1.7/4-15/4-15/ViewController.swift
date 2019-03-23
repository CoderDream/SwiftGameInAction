//
//  ViewController.swift
//  4-15
//
//  Created by Mac on 14-12-27.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        class Person {
            var residence: Residence?=nil
        }
        class Residence {
            var numberOfRooms = 10
        }
        let john1 = Person()
        if let roomCount = john1.residence?.numberOfRooms {						//通过可选链接调用属性
            println("John在房子中有 \(roomCount)个房间")
        } else {
            println("无法检索房间数")
        }
        let john2 = Person()
        let johnResidence = Residence()
        john2.residence=johnResidence
        if let roomCount = john2.residence?.numberOfRooms {						//通过可选链接调用属性
            println("John在房子中有 \(roomCount)个房间")
        } else {
            println("无法检索房间数")
        }


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


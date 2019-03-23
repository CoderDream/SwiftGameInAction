//
//  ViewController.swift
//  6-71
//
//  Created by Mac on 14-12-25.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //返回一个比输入值大1得值
        func stepForward(input: Int) -> Int {
            return input + 1
        }
        //返回一个比输入值小1得值
        func stepBackward(input: Int) -> Int {
            return input - 1
        }
        //选择返回哪个函数
        func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
            return backwards ? stepBackward : stepForward
        }
        var currentValue = 5
        let moveNearerToZero = chooseStepFunction(currentValue<0)
        while currentValue < 11  {
            println("\(currentValue)")
            currentValue = moveNearerToZero(currentValue)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  4-6
//
//  Created by Mac on 14-12-26.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        class StepCounter {
            var totalSteps: Int = 0 {
                //完整的属性监视器
                willSet(newTotalSteps) {
                    println("新的值为 \(newTotalSteps)")
                }
                didSet(old) {
                    if totalSteps > old {
                        println("与原来相比增减了 \(totalSteps - old) 个值")
                    }
                }
            }
        }
        let stepCounter = StepCounter()
        stepCounter.totalSteps = 0
        stepCounter.totalSteps = 5
        stepCounter.totalSteps = 8
        stepCounter.totalSteps = 16

       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


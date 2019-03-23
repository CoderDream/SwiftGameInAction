//
//  ViewController.swift
//  3-64
//
//  Created by Mac on 14-12-25.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        func average(numbers: Double...){
            var total: Double = 0
            for number in numbers {
                total += number
            }
            println(total/Double(numbers.count))
        }
        average(1, 2, 3, 4, 5)
        average(20,50,70)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


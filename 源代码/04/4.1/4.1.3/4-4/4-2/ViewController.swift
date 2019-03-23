//
//  ViewController.swift
//  4-2
//
//  Created by Mac on 14-12-26.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        class DegreeClass{
            var degree=0.0
            var cal :Double{
                get{
                    var centigradedegree=(degree-32)/1.8
                    return centigradedegree
                }
                set(centigradedegree){
                    degree=1.8*centigradedegree+32
                }
            }
        }
        var degreeClass=DegreeClass()
        degreeClass.cal=(10.0)
        println(degreeClass.cal)
        println(degreeClass.degree)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


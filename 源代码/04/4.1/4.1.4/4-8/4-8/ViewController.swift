//
//  ViewController.swift
//  4-8
//
//  Created by Mac on 14-12-27.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        class NewClass{
            func rang(start:Int,end:Int){
                var i=start
                for(i;i<=end;++i){
                    println(i)
                    
                }
            }
        }
        var newclass=NewClass()
        newclass.rang(0, end: 5)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


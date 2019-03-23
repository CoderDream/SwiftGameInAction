//
//  ViewController.swift
//  4-54
//
//  Created by Mac on 14-12-23.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var i:Int
        for(i=0;i<11;i++){
            if(i>=6){
                break
            }
            println(i)
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  4-47
//
//  Created by Mac on 14-12-22.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var a=3
        if(a==0){
            println("0")
        }
        else if (a==1){
            
            println("1")
        }
        else if (a==2){
            
            println("2")
        }
        else if (a==3){
            
            println("3")
        }
        else{
            println("4")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


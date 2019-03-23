//
//  ViewController.swift
//  4-25
//
//  Created by Mac on 14-12-28.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        enum Parterre:String{
            case nickname1="Rose"
            case nickname2="Carnation"
            case nickname3="tulip"
            case nickname4="orchid"
            case nickname5="peony"
            case nickname6="cactus"
            
            
            
            
        }
        let flower=Parterre.nickname1
        println(flower)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


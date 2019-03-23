//
//  ViewController.swift
//  4-26
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
            case nickname3="Tulip"
            case nickname4="Orchid"
            case nickname5="Peony"
            case nickname6="Cactus"
        }
        let flower=Parterre.nickname5
        switch flower{
            case .nickname1:
                println("Rose")
            case .nickname2:
                println("Carnation")
            case .nickname3:
                println("Tulip")
            case .nickname4:
                println("Orchid")
            case .nickname5:
                println("Peony")
            case .nickname6:
                println("Cactus")
            
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


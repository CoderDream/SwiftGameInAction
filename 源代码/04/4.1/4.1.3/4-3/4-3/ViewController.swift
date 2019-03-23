//
//  ViewController.swift
//  4-3
//
//  Created by Mac on 14-12-26.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        class NewClass1 {
            var fileName = 8023
        }
        class NewClass2 {
            lazy var importer = NewClass1()
            var data = [String]()
        }
        let manager = NewClass2()
        manager.data += ["Some more data"]
        println(manager.data)
        println(manager.importer.fileName)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


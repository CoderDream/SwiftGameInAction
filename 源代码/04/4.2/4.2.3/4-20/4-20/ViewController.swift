//
//  ViewController.swift
//  4-20
//
//  Created by Mac on 14-12-28.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit
class NewClass1{
    final var value:Int{
        return 100
    }
}
class NewClass2:NewClass1{
    //重写类型方法
    override var value:Int{
        return 50
    }
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


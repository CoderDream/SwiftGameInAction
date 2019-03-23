//
//  ViewController.swift
//  4-59
//
//  Created by Mac on 14-12-23.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        func range(start:Int,end:Int){
            var i=start
            var j=end
            for i;i<=j;++i{
                println(i)
            }
        }
      
        range(0,5)							//调用

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


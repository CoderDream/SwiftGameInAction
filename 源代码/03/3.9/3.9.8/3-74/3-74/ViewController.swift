//
//  ViewController.swift
//  3-74
//
//  Created by Mac on 14-12-25.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    func factorial(var value:Int)->Int{
        if(value==1){
            return value
        }else{
            return value * factorial(value-1)
        }
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
              var i:Int
        var sum=0
        for(i=1;i<=5;i++){
            sum=sum+factorial(i)
        }
        println(sum)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


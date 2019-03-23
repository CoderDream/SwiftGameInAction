//
//  ViewController.swift
//  4-17
//
//  Created by Mac on 14-12-28.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit
class NewClass1{
    var speed:Double{
        return 10
    }
    class var str:String{
        return "Hello"
    }
    subscript(index:Int)->Int{
        var count=index-5
            return count
            
    }
    func printstr(){
        println("World")
    }
    class func rang(start:Int,end:Int){
        println("两数相差\(end-start)")
    }
}
class NewClass2:NewClass1{
    override var speed:Double{
        return 10
    }
    override class var str:String{
        return "Swift"
    }
    override subscript(index:Int)->Int{
        var count=index+100
            return count
    }
    override func printstr() {
        println("I Love Swify")
    }
    override class func rang(start:Int,end:Int){
        var i=start
        for(i;i<=end;++i){
            println(i)
        }
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var newclass2=NewClass2()
        println(newclass2.speed)
        println(NewClass2.str)
        
        println(newclass2[8])
        
        newclass2.printstr()
        NewClass2.rang(0, end: 5)
        
        
    }

}


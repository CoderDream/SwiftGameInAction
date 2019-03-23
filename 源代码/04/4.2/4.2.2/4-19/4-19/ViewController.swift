//
//  ViewController.swift
//  4-19
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
class NewClass2: NewClass1 {
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
    func superclass1(){
        println(super.speed)
        println(super[5])
        super.printstr()
        
    }
    class func superclass2(){
        super.str
        super.rang(5, end: 20)
    }

}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        var newclass2=NewClass2()
        newclass2.superclass1()
        NewClass2.superclass2()
    }



}


//
//  ViewController.swift
//  6.7.8
//
//  Created by Mac on 14-12-30.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit
@objc protocol Speaker {
    func Speak()
    optional func TellJoke()
}
protocol DateSimulatorDelegate {
    func dateSimulatorDidStart(sim:DateSimulator, a:Speaker, b:Speaker)
    func dateSimulatorDidEnd(sim:DateSimulator, a: Speaker, b:Speaker)
}
class LoggingDateSimulator:DateSimulatorDelegate {
    func dateSimulatorDidStart(sim:DateSimulator, a:Speaker, b:Speaker) {
        println("Date started!")
    }
    func dateSimulatorDidEnd(sim:DateSimulator, a: Speaker, b: Speaker)  {
        println("Date ended!")
    } 
}
class Vicki: Speaker {
    func Speak() {
        println("Hello, I am Vicki!")
    }
    func TellJoke() {
        println("Q: What did Sushi A say to Sushi B?")
    } 
}
class Ray: Speaker {
    func Speak() {
        println("Yo, I am Ray!")
    }
    func TellJoke() {
        println("Q: Whats the object-oriented way to become wealthy?")
    }
}
class DateSimulator {
    
    
    let a:Speaker
    let b:Speaker
    var delegate:DateSimulatorDelegate?
    
     init(a:Speaker, b:Speaker) {
        
        self.a = a
        self.b = b
     }
    
    func simulate() {
        delegate?.dateSimulatorDidStart(self, a:a, b: b)
        println("Off to dinner...")
        a.Speak()
        b.Speak()
        println("Walking back home...")
        a.TellJoke?()
        b.TellJoke?()
        delegate?.dateSimulatorDidEnd(self, a:a, b:b)
    }
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let sim = DateSimulator(a:Vicki(), b:Ray())
        sim.simulate()
    }
}


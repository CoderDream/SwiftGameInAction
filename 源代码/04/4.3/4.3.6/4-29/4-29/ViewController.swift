//
//  ViewController.swift
//  4-29
//
//  Created by Mac on 14-12-28.
//  Copyright (c) 2014年 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        enum Barcode {
            //定义了任意类型的成员
            case UPCA(Int, Int, Int)
            case QRCode(String)
        }
        var productBarcode = Barcode.UPCA(8, 85909_51226, 3)
        switch productBarcode {
            case .UPCA(let numberSystem, let identifier, let check):
                println("UPC-A 的值有： \(numberSystem), \(identifier), \(check).")
            case .QRCode(let productCode):
                println("QR code 的值有： \(productCode).")
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


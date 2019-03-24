//
//  Game.swift
//  MatchingGame
//
//  Created by CoderDream on 2019/3/23.
//  Copyright © 2019 CoderDream. All rights reserved.
//
import UIKit
import Foundation

class GameSceneViewController: UIViewController {
    
//    var tiles:NSMutableArray = NSMutableArray(objects:
//        UIImage(named: "icons01.png")!,
//        UIImage(named: "icons01.png")!,
//        UIImage(named: "icons02.png")!,
//        UIImage(named: "icons02.png")!,
//        UIImage(named: "icons03.png")!,
//        UIImage(named: "icons03.png")!,
//        UIImage(named: "icons04.png")!,
//        UIImage(named: "icons04.png")!,
//        UIImage(named: "icons05.png")!,
//        UIImage(named: "icons05.png")!,
//        UIImage(named: "icons06.png")!,
//        UIImage(named: "icons06.png")!,
//        UIImage(named: "icons07.png")!,
//        UIImage(named: "icons07.png")!,
//        UIImage(named: "icons08.png")!,
//        UIImage(named: "icons08.png")!,
//        UIImage(named: "icons09.png")!,
//        UIImage(named: "icons09.png")!,
//        UIImage(named: "icons10.png")!,
//        UIImage(named: "icons10.png")!,
//        UIImage(named: "icons11.png")!,
//        UIImage(named: "icons11.png")!,
//        UIImage(named: "icons12.png")!,
//        UIImage(named: "icons12.png")!,
//        UIImage(named: "icons13.png")!,
//        UIImage(named: "icons13.png")!,
//        UIImage(named: "icons14.png")!,
//        UIImage(named: "icons14.png")!,
//        UIImage(named: "icons15.png")!,
//        UIImage(named: "icons15.png")!)
    
    var tiles: Array =
        [ UIImage(named: "icons01.png")!,
                                              UIImage(named: "icons01.png")!,
                                              UIImage(named: "icons02.png")!,
                                              UIImage(named: "icons02.png")!,
                                              UIImage(named: "icons03.png")!,
                                              UIImage(named: "icons03.png")!,
                                              UIImage(named: "icons04.png")!,
                                              UIImage(named: "icons04.png")!,
                                              UIImage(named: "icons05.png")!,
                                              UIImage(named: "icons05.png")!,
                                              UIImage(named: "icons06.png")!,
                                              UIImage(named: "icons06.png")!,
                                              UIImage(named: "icons07.png")!,
                                              UIImage(named: "icons07.png")!,
                                              UIImage(named: "icons08.png")!,
                                              UIImage(named: "icons08.png")!,
                                              UIImage(named: "icons09.png")!,
                                              UIImage(named: "icons09.png")!,
                                              UIImage(named: "icons10.png")!,
                                              UIImage(named: "icons10.png")!,
                                              UIImage(named: "icons11.png")!,
                                              UIImage(named: "icons11.png")!,
                                              UIImage(named: "icons12.png")!,
                                              UIImage(named: "icons12.png")!,
                                              UIImage(named: "icons13.png")!,
                                              UIImage(named: "icons13.png")!,
                                              UIImage(named: "icons14.png")!,
                                              UIImage(named: "icons14.png")!,
                                              UIImage(named: "icons15.png")!,
                                              UIImage(named: "icons15.png")!]

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tileClick(_ sender: UIButton) {
        // 获取轻拍按钮的 tag
        let senderID: Int =  sender.tag
        print("senderID: \(senderID)")
        
        let tileImage: UIImage = self.tiles[senderID]
        sender.setImage(tileImage, for: UIControl.State.normal)        
    }
}

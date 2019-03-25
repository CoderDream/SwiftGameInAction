//
//  Game.swift
//  SpaceInvaders
//
//  Created by CoderDream on 2019/3/25.
//  Copyright © 2019 CoderDream. All rights reserved.
//

import Foundation

import UIKit

class GameViewController: UIViewController {
    
    var playerImage: UIImage =  UIImage(named: "ship.png")!
    var playerRect: CGRect = CGRect(x: 0, y: 0, width: 0, height: 0)
    var playerView: UIImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.playerView.image = self.playerImage
        self.playerRect = CGRect(x: 50, y: 400, width: 64, height: 64)
        self.playerView.frame = self.playerRect
        self.view.addSubview(self.playerView)
    }
}

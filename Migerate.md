
sender.setImage(tileImage, for: UIControl.State.normal)


@IBAction func tileClick(_ sender: UIButton) {
        // 判断轻拍的按钮是否禁用
        if isDisabled {
            return
        }
        
        // 获取轻拍按钮的 tag
        let senderID: Int =  sender.tag
        print("senderID: \(senderID)")
        
        // 判断翻转按钮的 tag 值是否大于 0 ， 并且和当前轻拍按钮的 tag 值是否相等
        if self.tileFlipped >= 0 && senderID != self.tileFlipped {
            // 翻转第二个卡牌
            self.tile2 = sender
            let lastImage: UIImage = self.tiles.object(at: self.tileFlipped) as! UIImage
            let tileImage: UIImage = self.tiles.object(at: senderID) as! UIImage
            
            sender.setImage(tileImage, for: UIControl.State.normal)
            
            // 禁用轻拍的卡牌
            isDisabled = true
            
            if tileImage == lastImage {
                // 将两个按钮设置为不可用状态
                self.tile1.isEnabled = false
                self.tile2.isEnabled = false
                isMatch = true
            }
            
            // 将翻转的按钮设置为 -1 ， 表示没有进行翻转的卡牌
            self.tileFlipped = -1
        } else {
            // 翻转第一个卡牌
            self.tileFlipped = senderID
            self.tile1 = sender
            let tileImage: UIImage = self.tiles.object(at: senderID) as! UIImage
            sender.setImage(tileImage, for: UIControl.State.normal)
        }
    }
    
    

    @IBAction func tileClick(_ sender: UIButton) {
        // 获取轻拍按钮的 tag
        let senderID: Int =  sender.tag
        print("senderID: \(senderID)")
        
        let tileImage: UIImage = self.tiles[senderID]
        sender.setImage(tileImage, for: UIControl.State.normal)
    }

        @IBAction func tileClick(_ sender: UIButton) {
        // 获取轻拍按钮的 tag
        let senderID: Int =  sender.tag
        print("senderID: \(senderID)")
        
        let tileImage: UIImage = self.tiles[senderID]
        sender.setImage(tileImage, for: UIControl.State.normal)        
    }
    
    
    @IBAction func tileClick(_ sender: UIButton) {
        if isDisabled {
            return
        }
        let senderID: Int =  sender.tag;
        if self.tileFlipped >= 0 && senderID != self.tileFlipped {
            self.tile2 = sender
            let lastImage: UIImage = self.tiles.object(at: self.tileFlipped) as! UIImage
            let tileImage: UIImage = self.tiles.object(at: senderID) as! UIImage
            
            sender.setImage(tileImage, for: UIControl.State.normal)
            self.guessCounter += 1
            if tileImage == lastImage {
                self.tile1.isEnabled = false
                self.tile2.isEnabled = false
                self.matchCounter += 1
                isMatch = true
            }
            isDisabled = true
            Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(GameSceneViewController.resetTiles), userInfo: nil, repeats: false)
            self.tileFlipped = -1
        } else {
            self.tileFlipped = senderID
            self.tile1 = sender
            let tileImage:UIImage = self.tiles.object(at: senderID) as! UIImage
            sender.setImage(tileImage, for: UIControl.State.normal)
        }
        gameScoreLabel.text = "Matches: \(self.matchCounter),Guesses: \(self.guessCounter)"
    }
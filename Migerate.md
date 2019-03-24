
sender.setImage(tileImage, for: UIControl.State.normal)

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
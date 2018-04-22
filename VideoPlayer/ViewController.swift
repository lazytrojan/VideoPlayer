//
//  ViewController.swift
//  VideoPlayer
//
//  Created by Sahil Bhutani on 4/21/18.
//  Copyright © 2018 Sahil Bhutani. All rights reserved.
//

import UIKit
import Player

class ViewController: UIViewController {
    
    @IBOutlet weak var upperView: UIView!
    @IBOutlet weak var lowerView: UIView!
    
    
    // http://res.cloudinary.com/staplelogic/video/upload/v1521438940/nas9qxenlzbq8g1igmle.mp4
    var player1:Player = Player()
    var player2:Player = Player()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.player1.url = URL(string: "http://res.cloudinary.com/staplelogic/video/upload/v1523670796/pt8qhbwke3lqbl712ljk.mp4")
        self.player1.view.frame = self.upperView.bounds
        self.upperView.addSubview(self.player1.view)
        
        self.player2.url = URL(string: "http://res.cloudinary.com/staplelogic/video/upload/v1523670796/pt8qhbwke3lqbl712ljk.mp4")
        self.player2.view.frame = self.lowerView.bounds
        self.lowerView.addSubview(self.player2.view)
        self.player1.bufferSize = 20.0
        self.player2.bufferSize = 20.0
        self.player1.playFromBeginning()
        self.player2.playFromBeginning()
    }
}


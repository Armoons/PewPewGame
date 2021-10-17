//
//  GameViewController.swift
//  PewPewGame
//
//  Created by Stepanyan Arman  on 17.10.2021.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = GameScene(size: view.frame.size)
        let skView = view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.presentScene(scene)
    }
}


//
//  GameScene.swift
//  PewPewGame
//
//  Created by Stepanyan Arman  on 17.10.2021.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    

    
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        
        
        setScene(view)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        for touch in touches {
            if touch == touches.first {
                print("Touched")
            }
        }
    }
    
    func setScene(_ view: SKView) {
        backgroundColor = colors.darkBlue
        addButton()
        
    }

    func addButton() {
        let button = SKShapeNode(circleOfRadius: 35)
        button.fillColor = colors.pink
        button.strokeColor = colors.pink
        guard let view = view else {
            return
        }
        button.position = CGPoint(x: view.bounds.width / 2, y: view.bounds.height / 2)
        addChild(button)
    }
    
    
    
    struct colors {
        static let darkBlue = UIColor(red: 16/255, green: 19/255, blue: 58/255, alpha: 1)
        static let orange = UIColor(red: 246/255, green: 135/255, blue: 65/255, alpha: 1)
        static let pink = UIColor(red: 239/255, green: 1/255, blue: 149/255, alpha: 1)
    }

}


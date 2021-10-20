//
//  GameScene.swift
//  PewPewGame
//
//  Created by Stepanyan Arman  on 17.10.2021.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    
    var firstRightButton: MainButton = {
        let button = MainButton(color: colors.pink, radius: raduis.movement) {
            return
        }
        return button
    }()
    
    var firstLeftButton: MainButton = {
        let button = MainButton(color: colors.pink, radius: raduis.movement) {
            return
        }
        return button
    }()
    
    var firstShootButton: MainButton = {
        let button = MainButton(color: colors.pink, radius: raduis.shooting) {
            return
        }
        return button
    }()
    
    var secondRightButton: MainButton = {
        let button = MainButton(color: colors.orange, radius: raduis.movement) {
            return
        }
        return button
    }()
    
    var secondLeftButton: MainButton = {
        let button = MainButton(color: colors.orange, radius: raduis.movement) {
            return
        }
        return button
    }()
    
    var secondShootButton: MainButton = {
        let button = MainButton(color: colors.orange, radius: raduis.shooting) {
            return
        }
        return button
    }()
    
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        
        setScene(view)
        setupButtons()
        
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
    }
    
    func setupButtons() {
        
        for button in [firstRightButton, firstLeftButton, firstShootButton,
                       secondLeftButton, secondShootButton, secondRightButton] {
            addChild(button)
        }
        
        guard let viewBounds = view?.bounds else {
            return
        }
        
        let firstShootButtonConstraint = SKConstraint.distance(SKRange(constantValue: 0), to: CGPoint(x: viewBounds.width / 2, y: viewBounds.height / 8))
        let firstLeftButtonConstraint = SKConstraint.distance(SKRange(constantValue: 0), to: CGPoint(x:viewBounds.width / 4, y: viewBounds.height / 8))
        let firstRightButtonConstraint1 =  SKConstraint.distance(SKRange(constantValue: 0), to: CGPoint(x: 3 * viewBounds.width / 4, y: viewBounds.height / 8))
        
        firstShootButton.constraints = [firstShootButtonConstraint]
        firstLeftButton.constraints = [firstLeftButtonConstraint]
        firstRightButton.constraints = [firstRightButtonConstraint1]
        
        let secondShootButtonConstraint = SKConstraint.distance(SKRange(constantValue: 0), to: CGPoint(x: viewBounds.width / 2, y: 7 * viewBounds.height / 8))
        let secondLeftButtonConstraint = SKConstraint.distance(SKRange(constantValue: 0), to: CGPoint(x:viewBounds.width / 4, y: 7 * viewBounds.height / 8))
        let secondRightButtonConstraint = SKConstraint.distance(SKRange(constantValue: 0), to: CGPoint(x: 3 * viewBounds.width / 4, y: 7 * viewBounds.height / 8))
        
        secondShootButton.constraints = [secondShootButtonConstraint]
        secondLeftButton.constraints = [secondLeftButtonConstraint]
        secondRightButton.constraints = [secondRightButtonConstraint]
    }


    
    
    
    struct colors {
        static let darkBlue = UIColor(red: 16/255, green: 19/255, blue: 58/255, alpha: 1)
        static let orange = UIColor(red: 246/255, green: 135/255, blue: 65/255, alpha: 1)
        static let pink = UIColor(red: 239/255, green: 1/255, blue: 149/255, alpha: 1)
    }
    
    struct raduis {
        static let movement: CGFloat = 35
        static let shooting: CGFloat = 30
    }

}


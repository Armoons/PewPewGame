//
//  MainButton.swift
//  PewPewGame
//
//  Created by Stepanyan Arman  on 19.10.2021.
//

import SpriteKit

class MainButton: SKNode {
    var button: SKShapeNode
    private var mask: SKSpriteNode
    private var cropNode: SKCropNode
    private var action: () -> Void
    var used = false
    
    init(color: UIColor, radius: CGFloat , buttonAction: @escaping () -> Void ) {
        button = SKShapeNode(circleOfRadius: radius)
        button.fillColor = color
        button.strokeColor = color
        
        
        mask = SKSpriteNode(color: .black, size: button.frame.size)
        mask.alpha = 0
        
        cropNode = SKCropNode()
        cropNode.maskNode = button
        cropNode.zPosition = 3
        cropNode.addChild(mask)
        
        action = buttonAction
        
        super.init()
        
        isUserInteractionEnabled = true
        
        addNodes()
        setupNodes()

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addNodes(){
        addChild(button)
        addChild(cropNode)
    }
    
    func setupNodes() {
        button.zPosition = 0
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if !used {
            disable()
            action()
        }
        
        print("Began")
    }
    
    
    
//    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//        print("Moved")
//        if used {
//            for touch in touches {
//                let location = touch.location(in: self)
//                if button.contains(location) {
//                    print("On")
//                    button.alpha = 0.5
////                    mask.alpha = 0.5
//                } else {
//                    print("Out")
//                    button.alpha = 1
////                    mask.alpha = 0
//                }
//            }
//        }
//
//    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("Ended")
        enable()

//        if used {
//            for touch in touches {
//                let location = touch.location(in: self)
                
//                if button.contains(location) {
                    
//                    disable()
//                    run(SKAction.sequence([SKAction.wait(forDuration: 0.1), SKAction.run {
//                        self.enable()
//                    }]))
                    
                    
//                }
//            }
//        }
    }
    
    func disable() {
        used = true
        mask.alpha = 0
        button.alpha = 0.5
    }
    
    func enable() {
        used = false
        mask.alpha = 0
        button.alpha = 1
    }
    
    
    
}

//
//  GameScene.swift
//  Flip Ninja
//
//  Created by Ben  Charles on 6/30/17.
//  Copyright © 2017 Ben  Charles. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var movingGround: BCMovingGround!
    var character: BCCharacter!
    var isStarted = false
    var cloudGenerator: BCCloudGenerator!
    
    override func didMove(to view: SKView) {
        
        backgroundColor = UIColor(red: 159.0/255.0, green: 201.0/255.0, blue: 244.0/255.0, alpha: 1.0)
        
        movingGround = BCMovingGround(size: CGSize(width: view.frame.width, height: kBCGroundHeight))
        movingGround.position = CGPoint(x: 0, y: view.frame.size.height/2)
        addChild(movingGround)
        
        character = BCCharacter()
        character.position = CGPoint(x: 70, y: movingGround.position.y + movingGround.frame.size.height/2 + character.frame.size.height/2)
        addChild(character)
        character.breathe()
        
        cloudGenerator = BCCloudGenerator(color: UIColor.clear, size: view.frame.size)
        cloudGenerator.position = view.center
        addChild(cloudGenerator)
        cloudGenerator.populate(num: 2)
        cloudGenerator.startGenerating(seconds: 15)
        
    }
    
    func start() {
        isStarted = true
        character.stopBreathing()
        character.startRunning()
        movingGround.start()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if !isStarted {
            start()
        } else {
            character.flip()
        }
    }
    
}

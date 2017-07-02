//
//  BCObstacle.swift
//  Flip Ninja
//
//  Created by Ben  Charles on 7/2/17.
//  Copyright © 2017 Ben  Charles. All rights reserved.
//

import Foundation
import SpriteKit

class BCObstacle: SKSpriteNode {
    
    let WALL_WIDTH: CGFloat = 30.0
    let WALL_HEIGHT: CGFloat = 50.0
    let WALL_COLOR = UIColor.black
    
    init() {
        super.init(texture: nil, color: WALL_COLOR, size: CGSize(width: WALL_WIDTH, height: WALL_HEIGHT))
        startMoving()
        
    }
    
    func startMoving() {
        let moveLeft = SKAction.moveBy(x: -kDefaultXToMove, y: 0, duration: 1)
        run(SKAction.repeatForever(moveLeft))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

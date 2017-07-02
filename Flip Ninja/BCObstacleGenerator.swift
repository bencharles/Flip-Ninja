//
//  BCObstacleGenerator.swift
//  Flip Ninja
//
//  Created by Ben  Charles on 7/2/17.
//  Copyright © 2017 Ben  Charles. All rights reserved.
//

import Foundation
import SpriteKit

class BCObstacleGenerator: SKSpriteNode {
    
    var generationTimer: Timer?
    
    func startGeneratingObstacles(seconds: TimeInterval) {
        generationTimer = Timer.scheduledTimer(timeInterval: seconds, target: self, selector: "generateObstacle", userInfo: nil, repeats: true)
        
    }
    
    func generateObstacle() {
        
        var scale: CGFloat
        let rand = arc4random_uniform(2)
        
        if rand == 0 {
            scale = 1.0
        } else {
            scale = -1.0
        }
        
        let obstacle = BCObstacle()
        obstacle.position.x = size.width/2 + obstacle.size.width/2
        obstacle.position.y = scale * (kBCGroundHeight/2 + obstacle.size.height/2)
        addChild(obstacle)
    }
    
}

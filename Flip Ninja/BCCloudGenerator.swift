//
//  BCCloudGenerator.swift
//  Flip Ninja
//
//  Created by Ben  Charles on 6/30/17.
//  Copyright © 2017 Ben  Charles. All rights reserved.
//

import Foundation
import SpriteKit

class BCCloudGenerator: SKSpriteNode {
    
    let CLOUD_WIDTH: CGFloat = 125.0
    let CLOUD_HEIGHT: CGFloat = 55.0
    
    var generationTimer: Timer!
    
    func populate(num: Int) {
        
        for _ in 0 ..< num {
            let cloud = BCCloud(size: CGSize(width: CLOUD_WIDTH, height: CLOUD_HEIGHT))
            let x = CGFloat(arc4random_uniform(UInt32(size.width))) - size.width/2
            let y = CGFloat(arc4random_uniform(UInt32(size.height))) - size.height/2
            cloud.position = CGPoint(x: x, y: y)
            cloud.zPosition = -1
            addChild(cloud)
        }
        
    }
    
    func startGenerating(seconds: TimeInterval) {
        generationTimer = Timer.scheduledTimer(timeInterval: seconds, target: self, selector: "generateCloud", userInfo: nil, repeats: true)
    }
    
    func generateCloud() {
        let x = size.width/2 + CLOUD_WIDTH/2
        let y = CGFloat(arc4random_uniform(UInt32(size.height))) - size.height/2
        let cloud = BCCloud(size: CGSize(width: CLOUD_WIDTH, height: CLOUD_HEIGHT))
        cloud.position = CGPoint(x: x, y: y)
        cloud.zPosition = -1
        addChild(cloud)
        
    }
    
}

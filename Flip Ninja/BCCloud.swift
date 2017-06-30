//
//  BCCloud.swift
//  Flip Ninja
//
//  Created by Ben  Charles on 6/30/17.
//  Copyright © 2017 Ben  Charles. All rights reserved.
//

import Foundation
import SpriteKit

class BCCloud: SKShapeNode {
    
    init(size: CGSize) {
        super.init()
        let path = CGPath(ellipseIn: CGRect(x: 0, y: 0, width: size.width, height: size.height), transform: nil)
        self.path = path
        fillColor = UIColor.white
        
        startMoving()
        
    }
    
    func startMoving() {
        let moveLeft = SKAction.moveBy(x: -10, y: 0, duration: 1)
        run(SKAction.repeatForever(moveLeft))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//
//  StarsController.swift
//  Stars
//
//  Created by Madison Waters on 9/11/18.
//  Copyright © 2018 Jonah Bergevin. All rights reserved.
//

import Foundation

class StarsController {
    
    // Create
    private(set) var stars: [Stars] = []
    
    func createStar(withName name: String, distance: Double) {
        let star = Stars(name: name, distance: distance)
        stars.append(star)
        
    }
    
    
}

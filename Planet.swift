//
//  Planet.swift
//  NASA_API
//
//  Created by Missy Allan on 2/14/17.
//  Copyright © 2017 Missy Allan. All rights reserved.
//

import Foundation

class Planet {
    
    let name: String
    let numberOfMoons: Int
    let numberOfDays: Float
    let facts: [String]
    
    
    init(name: String, numberOfMoons: Int, numberOfDays: Float, facts: [String]) {
        
        self.name = name
        self.numberOfMoons = numberOfMoons
        self.numberOfDays = numberOfDays
        self.facts = facts
        
    }
    
    
    
    
    
    
}

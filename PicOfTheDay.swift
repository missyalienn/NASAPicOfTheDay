//
//  PicOfTheDay.swift
//  NASA_API
//
//  Created by Missy Allan on 11/3/16.
//  Copyright © 2016 Missy Allan. All rights reserved.
//

import Foundation
import UIKit

class PicOfTheDay {
    
    var date: String
    var explanation: String
    var title: String
    var image: UIImage?
    
    init(data: [String: String]) {
        
        self.date = data["date"]!
        self.explanation = data["explanation"]!
        self.title = data["title"]!
      
    }
    
    
    
    
    
    
    
    
}

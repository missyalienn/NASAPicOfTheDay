//
//  NASADataStore.swift
//  NASA_API
//
//  Created by Missy Allan on 11/3/16.
//  Copyright © 2016 Missy Allan. All rights reserved.
//

import Foundation



class NASADataStore {
    
    static let sharedInstance = NASADataStore()
    
    var date: String!
    var explanation: String!
    var title: String!


    private init() {}
    
    
    
}

//
//  Restaurant.swift
//  FoodPin
//
//  Created by xiaobo on 15/10/11.
//  Copyright © 2015年 xiaobo. All rights reserved.
//

import Foundation

struct Restaurant1 {
    var name: String
    var type: String
    var location: String
    var image: String
    var isVisited: Bool
    var rating = ""
    
    init(name: String, type: String, location: String, image: String, isVisited: Bool) {
        self.name = name
        self.type = type
        self.location = location
        self.image = image
        self.isVisited = isVisited
    }
}

//let r1 = Restaurant(name: <#T##String#>, type: <#T##String#>, location: <#T##String#>, image: <#T##String#>, isVisited: <#T##Bool#>)
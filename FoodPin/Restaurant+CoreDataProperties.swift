//
//  Restaurant+CoreDataProperties.swift
//  FoodPin
//
//  Created by xiaobo on 15/11/9.
//  Copyright © 2015年 xiaobo. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Restaurant {

    @NSManaged var name: String
    @NSManaged var type: String
    @NSManaged var location: String
    @NSManaged var isVisited: NSNumber
    @NSManaged var rating: String?
    @NSManaged var image: NSData?

}

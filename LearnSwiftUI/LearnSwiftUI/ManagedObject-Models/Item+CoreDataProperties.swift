//
//  Item+CoreDataProperties.swift
//  LearnSwiftUI
//
//  Created by Hosamane, Vinay K N on 22/05/21.
//
//

import Foundation
import CoreData


extension Item {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Item> {
        return NSFetchRequest<Item>(entityName: "Item")
    }

    @NSManaged public var timestamp: Date?

}

extension Item : Identifiable {

}

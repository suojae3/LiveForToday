//
//  AppData+CoreDataProperties.swift
//  LiveForToday
//
//  Created by ㅣ on 2023/07/19.
//
//

import Foundation
import CoreData


extension TodoData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppData> {
        return NSFetchRequest<AppData>(entityName: "AppData")
    }

    @NSManaged public var what: String?
    @NSManaged public var when: Date?
    @NSManaged public var `where`: String?
    @NSManaged public var first: String?

}

extension TodoData : Identifiable {

}

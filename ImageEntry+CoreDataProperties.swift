//
//  ImageEntry+CoreDataProperties.swift
//  Text Mode Editor
//
//  Created by Elijah Spicer on 1/1/23.
//
//

import Foundation
import CoreData


extension ImageEntry {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ImageEntry> {
        return NSFetchRequest<ImageEntry>(entityName: "ImageEntry")
    }

    @NSManaged public var dateSaved: Date?
    @NSManaged public var drawingName: String?
    @NSManaged public var tileNumArray: [Int32]?
    @NSManaged public var tileColorArray: [TileColorData]?

}

extension ImageEntry : Identifiable {

}

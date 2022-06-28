//
//  ChordSettings+CoreDataProperties.swift
//  Chorder
//
//  Created by AppleWorm on 23.06.2022.
//
//

import Foundation
import CoreData


extension ChordSettings {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ChordSettings> {
        return NSFetchRequest<ChordSettings>(entityName: "ChordSettings")
    }

    @NSManaged public var fretsStyle: String?
    @NSManaged public var guitarType: String?
    @NSManaged public var hideNotes: Bool
    @NSManaged public var tuning: String?
    @NSManaged public var hadLoaded: Bool

}

extension ChordSettings : Identifiable {

}

extension NSManagedObject {
    
    convenience init(context: NSManagedObjectContext) {
        let name = String(describing: type(of: self))
        let entity = NSEntityDescription.entity(forEntityName: name, in: context)!
        self.init(entity: entity, insertInto: context)
    }
}

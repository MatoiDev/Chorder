//
//  ChordDataStorageManager.swift
//  Chorder
//
//  Created by AppleWorm on 23.06.2022.
//
//


import Foundation
import CoreData
import UIKit

var CHDataStorage: ChordDataStorageManager = ChordDataStorageManager()

class ChordDataStorageManager: UIViewController {
    
    lazy var viewContext: NSManagedObjectContext = persistentContainer.viewContext
    lazy var chordSettings = ChordSettings(context: viewContext)
    
    open func initChordData() -> Void {
        let request : NSFetchRequest<ChordSettings> = ChordSettings.fetchRequest()
        
        do {
            if let settings = try viewContext.fetch(request).last {
                chordSettings = settings
            } else {
                setDefaults(toData: &chordSettings)
            }
        } catch {
            setDefaults(toData: &chordSettings)
        }
    
    }
    
    func setDefaults(toData data: inout ChordSettings) -> Void {
        
        data.hadLoaded = true
        data.hideNotes = true
        data.fretsStyle = ChordDataStruct.CDFretsStyles.romanNumeralsStyle.rawValue
        data.guitarType = ChordDataStruct.CDGuitarType.acousticGuitarType.rawValue
        data.tuning = ChordDataStruct.CDTunning.standartETunning.rawValue

        do { try viewContext.save() } catch let error as NSError { showTroubleAlert(withTrouble: error) }
        
    }
    
    func updateChordData(withGuitarType guitarType: String, fretsStyle: String, tunningType: String, notesShowingType: Bool) -> Void {
        
        chordSettings.hideNotes = !notesShowingType
        chordSettings.fretsStyle = fretsStyle
        chordSettings.guitarType = guitarType
        chordSettings.tuning = tunningType
        
        do { try viewContext.save() } catch let error as NSError { showTroubleAlert(withTrouble: error) }
        
    }
    
    private func showTroubleAlert(withTrouble err: NSError) {
        
            let alert = UIAlertController(title: "Error with saving data", message: "Error: \(err)", preferredStyle: .alert)
            let quitProgramm = UIAlertAction(title: "Exit app", style: .destructive) { _ in
                exit(-1)
            }
            alert.addAction(quitProgramm)
        self.present(alert, animated: true)
        
        }
    
    
    // MARK: - Core Data stack
    
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Chorder")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
}

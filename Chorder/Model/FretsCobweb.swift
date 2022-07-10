//
//  FretsCobWeb.swift
//  Chorder
//
//  Created by AppleWorm on 07.07.2022.
//

import Foundation
import UIKit


func fretNoteHasPressed(_ fretNote: UIButton, onController controller: MainControllerDelegate) -> Void {
    
    determineNote(fretNote, onController: controller)

}

func determineNote(_ fretNote: UIButton, onController controller: MainControllerDelegate) -> Void {
    
    for fret in 0...24 {
        if controller.guitarStanOn![fret].contains(fretNote) {
            resetOtherNotes(onString: controller.guitarStanOn![fret].firstIndex(of: fretNote)!, exceptFret: fret, controller: controller)
            mark(fretNote, onController: controller)
            break
        }
    }
    
}

func mark(_ button: UIButton, onController controller: MainControllerDelegate, change: Bool = false) -> Void {
    var imageToSet: UIImage = UIImage(named: "defaultCircle")!
    if change {
        guard controller.chordProperties.hideNotes == false else {
            if !button.hasImage(named: "multiply", for: .normal) {
                button.setImage(imageToSet, for: .normal)
            }
            return
        }
        if button.hasImage(named: "defaultCircle", for: .normal) ||
            button.hasImage(named: "A", for: .normal) ||
            button.hasImage(named: "A#", for: .normal) ||
            button.hasImage(named: "B", for: .normal) ||
            button.hasImage(named: "C", for: .normal) ||
            button.hasImage(named: "C#", for: .normal) ||
            button.hasImage(named: "D", for: .normal) ||
            button.hasImage(named: "D#", for: .normal) ||
            button.hasImage(named: "E", for: .normal) ||
            button.hasImage(named: "F", for: .normal) ||
            button.hasImage(named: "F#", for: .normal) ||
            button.hasImage(named: "G", for: .normal) ||
            button.hasImage(named: "G#", for: .normal)
        {
            guard !button.hasImage(named: "multiply", for: .normal) else { return }
            switch controller.chordProperties.tuning {
                  /*  In cases: imageToSet = notes[button-sender][image depending on chosen tunnng]  */
            case ChordDataStruct.CDTunning.openGTunning.rawValue:
                if let image = controller.notes?[button]?[controller.ElementsBase.noteByTunning[.openGTunning]!]! {
                    imageToSet = image
                } else {
                    return
                }
            case ChordDataStruct.CDTunning.openDTunning.rawValue:
                if let image = controller.notes?[button]?[controller.ElementsBase.noteByTunning[.openDTunning]!]! {
                    imageToSet = image
                } else {
                    return
                }
            case ChordDataStruct.CDTunning.modalDTunning.rawValue:
                if let image = controller.notes?[button]?[controller.ElementsBase.noteByTunning[.modalDTunning]!]! {
                    imageToSet = image
                } else {
                    return
                }
            case ChordDataStruct.CDTunning.dropDTunning.rawValue:
                if let image = controller.notes?[button]?[controller.ElementsBase.noteByTunning[.dropDTunning]!]! {
                    imageToSet = image
                } else {
                    return
                }
            default:
                if let image = controller.notes?[button]?[controller.ElementsBase.noteByTunning[.standartETunning]!]! {
                    imageToSet = image
                } else {
                    return
                }
            }
            button.setImage(imageToSet, for: .normal)
        }
        
    } else {
        if button.hasImage(named: "defaultCircle", for: .normal) ||
            button.hasImage(named: "A", for: .normal) ||
            button.hasImage(named: "A#", for: .normal) ||
            button.hasImage(named: "B", for: .normal) ||
            button.hasImage(named: "C", for: .normal) ||
            button.hasImage(named: "C#", for: .normal) ||
            button.hasImage(named: "D", for: .normal) ||
            button.hasImage(named: "D#", for: .normal) ||
            button.hasImage(named: "E", for: .normal) ||
            button.hasImage(named: "F", for: .normal) ||
            button.hasImage(named: "F#", for: .normal) ||
            button.hasImage(named: "G", for: .normal) ||
            button.hasImage(named: "G#", for: .normal)
        {
            if controller.fretPunch!.contains(button) {
                button.setImage(UIImage(systemName: "multiply"), for: .normal)
            } else {
                setCross(onNote: button, controller: controller)
                button.setImage(UIImage(), for: .normal)
            }
        } else if button.hasImage(named: "multiply", for: .normal) {
            if controller.chordProperties.hideNotes {
                button.setImage(UIImage(named: "defaultCircle"), for: .normal)
            } else {
                switch controller.chordProperties.tuning {
                      /*  In cases: imageToSet = notes[button-sender][image depending on chosen tunnng]  */
                case ChordDataStruct.CDTunning.openGTunning.rawValue:
                    imageToSet = (controller.notes?[button]?[controller.ElementsBase.noteByTunning[.openGTunning]!]!)!
                case ChordDataStruct.CDTunning.openDTunning.rawValue:
                    imageToSet = (controller.notes?[button]?[controller.ElementsBase.noteByTunning[.openDTunning]!]!)!
                case ChordDataStruct.CDTunning.modalDTunning.rawValue:
                    imageToSet = (controller.notes?[button]?[controller.ElementsBase.noteByTunning[.modalDTunning]!]!)!
                case ChordDataStruct.CDTunning.dropDTunning.rawValue:
                    imageToSet = (controller.notes?[button]?[controller.ElementsBase.noteByTunning[.dropDTunning]!]!)!
                default:
                    imageToSet = (controller.notes?[button]?[controller.ElementsBase.noteByTunning[.standartETunning]!]!)!
                }
                button.setImage(imageToSet, for: .normal)
            }
        } else {
            if !controller.chordProperties.hideNotes {
                switch controller.chordProperties.tuning {
                      /*  In cases: imageToSet = notes[button-sender][image depending on chosen tunnng]  */
                case ChordDataStruct.CDTunning.openGTunning.rawValue:
                    imageToSet = (controller.notes?[button]?[controller.ElementsBase.noteByTunning[.openGTunning]!]!)!
                case ChordDataStruct.CDTunning.openDTunning.rawValue:
                    imageToSet = (controller.notes?[button]?[controller.ElementsBase.noteByTunning[.openDTunning]!]!)!
                case ChordDataStruct.CDTunning.modalDTunning.rawValue:
                    imageToSet = (controller.notes?[button]?[controller.ElementsBase.noteByTunning[.modalDTunning]!]!)!
                case ChordDataStruct.CDTunning.dropDTunning.rawValue:
                    imageToSet = (controller.notes?[button]?[controller.ElementsBase.noteByTunning[.dropDTunning]!]!)!
                default:
                    imageToSet = (controller.notes?[button]?[controller.ElementsBase.noteByTunning[.standartETunning]!]!)!
                }
            }
            button.setImage(imageToSet, for: .normal)
        }
    }
}


func pushNote(_ note: UIButton, controller: MainControllerDelegate) -> Void {
    if controller.allFrets1String!.contains(note) { controller.setNote(toString: 1, value: note) }
    else if controller.allFrets2String!.contains(note) { controller.setNote(toString: 2, value: note) }
    else if controller.allFrets3String!.contains(note) { controller.setNote(toString: 3, value: note) }
    else if controller.allFrets4String!.contains(note) { controller.setNote(toString: 4, value: note) }
    else if controller.allFrets5String!.contains(note) { controller.setNote(toString: 5, value: note) }
    else if controller.allFrets6String!.contains(note) { controller.setNote(toString: 6, value: note) }
}

func updateNotes(onController controller: MainControllerDelegate) -> Void {

    for i in 1...6 {
        if let note = controller.selectedNotes[i] {
        mark(note!, onController: controller, change: true)
        }
    }
    
}


            
func resetOtherNotes(onString string: Int, exceptFret exFret: Int, controller: MainControllerDelegate) -> Void {
    
    for fret in 1...24 {
        if fret == exFret { continue }
        controller.guitarStanOn![fret][string].setImage(UIImage(), for: .normal)
    }
    if exFret != 0 {
        controller.guitarStanOn![0][string].setImage(UIImage(named: "defaultPunchImage"), for: .normal)
    }
    
}

private func setCross(onNote note: UIButton, controller: MainControllerDelegate) -> Void {
    if controller.allFrets1String!.contains(note) { controller.fretPunch![0].setImage(UIImage(systemName: "multiply"), for: .normal) }
    else if controller.allFrets2String!.contains(note) {controller.fretPunch![1].setImage(UIImage(systemName: "multiply"), for: .normal) }
    else if controller.allFrets3String!.contains(note) { controller.fretPunch![2].setImage(UIImage(systemName: "multiply"), for: .normal) }
    else if controller.allFrets4String!.contains(note) { controller.fretPunch![3].setImage(UIImage(systemName: "multiply"), for: .normal) }
    else if controller.allFrets5String!.contains(note) { controller.fretPunch![4].setImage(UIImage(systemName: "multiply"), for: .normal) }
    else if controller.allFrets6String!.contains(note) { controller.fretPunch![5].setImage(UIImage(systemName: "multiply"), for: .normal) }
}


extension UIButton {
    func hasImage(named imageName: String, for state: UIControl.State) -> Bool {
        
        if imageName == "multiply" {
            guard let buttonImage = image(for: state), let namedImage = UIImage(systemName: imageName) else {
                return false
            }
            return buttonImage.pngData() == namedImage.pngData()
        } else {
            guard let buttonImage = image(for: state), let namedImage = UIImage(named: imageName) else {
                return false
            }
            return buttonImage.pngData() == namedImage.pngData()
        }
    
    }
}

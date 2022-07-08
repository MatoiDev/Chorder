import Foundation
import UIKit


func fretNoteHasPressed(_ fretNote: UIButton, onController controller: MainControllerDelegate) -> Void {
    
    determineNote(fretNote, onController: controller)
    
    if fretNote.hasImage(named: "multiply", for: .normal) {
        
        fretNote.setImage(UIImage(), for: .normal)
    } else {
        fretNote.setImage(UIImage(systemName: "multiply"), for: .normal)
    }
    
}

func determineNote(_ fretNote: UIButton, onController controller: MainControllerDelegate) -> Void {
    
    for fret in 0...23 {
        if controller.guitarStanOn![fret].contains(fretNote) {
            
            resetOtherNotes(onString: controller.guitarStanOn![fret].firstIndex(of: fretNote)!, exceptFret: fret, controller: controller)
            break
        }
    }
    
    
}

func resetOtherNotes(onString string: Int, exceptFret exFret: Int, controller: MainControllerDelegate) -> Void {
    
    for fret in 0...23 {
        guard fret != exFret else { continue }
        if fret == exFret { continue }
        controller.guitarStanOn![fret][string].setImage(UIImage(), for: .normal)
    }
    
}


extension UIButton {
    func hasImage(named imageName: String, for state: UIControl.State) -> Bool {
        guard let buttonImage = image(for: state), let namedImage = UIImage(systemName: imageName) else {
            return false
        }

        return buttonImage.pngData() == namedImage.pngData()
    }
}

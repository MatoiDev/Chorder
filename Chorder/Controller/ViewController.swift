//
//  ViewController.swift
//  Chorder
//
//  Created by AppleWorm on 22.06.2022.
//

import UIKit
import CoreData


protocol MainControllerDelegate {
    
    var eachFretLabels: [UILabel]? { get }
    
    var fretLabels: [UILabel]? { get }
    var onPunchTunningLabels: [UILabel]? { get }
    
    var fret1strings: [UIButton]? { get }
    var fret2strings: [UIButton]? { get }
    var fret3strings: [UIButton]? { get }
    var fret4strings: [UIButton]? { get }
    var fret5strings: [UIButton]? { get }
    var fret6strings: [UIButton]? { get }
    var fret7strings: [UIButton]? { get }
    var fret8strings: [UIButton]? { get }
    var fret9strings: [UIButton]? { get }
    var fret10strings: [UIButton]? { get }
    var fret11strings: [UIButton]? { get }
    var fret12strings: [UIButton]? { get }
    var fret13strings: [UIButton]? { get }
    var fret14strings: [UIButton]? { get }
    var fret15strings: [UIButton]? { get }
    var fret16strings: [UIButton]? { get }
    var fret17strings: [UIButton]? { get }
    var fret18strings: [UIButton]? { get }
    var fret19strings: [UIButton]? { get }
    var fret20strings: [UIButton]? { get }
    var fret21strings: [UIButton]? { get }
    var fret22strings: [UIButton]? { get }
    var fret23strings: [UIButton]? { get }
    var fret24strings: [UIButton]? { get }
    
    var guitarStanOn : [[UIButton]]? { get }
    
    var notes : [UIButton : [UIImage?]]? { get }
    
}


class CDViewController: UIViewController, MainControllerDelegate {
    
    //MARK: - Elements
    
    //All UIElements on controller
    let ElementsBase = UIElementsOnWelcomeViewControllerStruct()
    
    
    /* ———————————————————————————— Strings By Fret ———————————————————————————— */
    
    // 1 Fret
    
    @IBOutlet weak var Fret1String1: UIButton!
    @IBOutlet weak var Fret1String2: UIButton!
    @IBOutlet weak var Fret1String3: UIButton!
    @IBOutlet weak var Fret1String4: UIButton!
    @IBOutlet weak var Fret1String5: UIButton!
    @IBOutlet weak var Fret1String6: UIButton!
    
    // 2 Fret
    
    @IBOutlet weak var Fret2String1: UIButton!
    @IBOutlet weak var Fret2String2: UIButton!
    @IBOutlet weak var Fret2String3: UIButton!
    @IBOutlet weak var Fret2String4: UIButton!
    @IBOutlet weak var Fret2String5: UIButton!
    @IBOutlet weak var Fret2String6: UIButton!
    
    // 3 Fret
    
    @IBOutlet weak var Fret3String1: UIButton!
    @IBOutlet weak var Fret3String2: UIButton!
    @IBOutlet weak var Fret3String3: UIButton!
    @IBOutlet weak var Fret3String4: UIButton!
    @IBOutlet weak var Fret3String5: UIButton!
    @IBOutlet weak var Fret3String6: UIButton!
    
    // 4 Fret
    
    @IBOutlet weak var Fret4String1: UIButton!
    @IBOutlet weak var Fret4String2: UIButton!
    @IBOutlet weak var Fret4String3: UIButton!
    @IBOutlet weak var Fret4String4: UIButton!
    @IBOutlet weak var Fret4String5: UIButton!
    @IBOutlet weak var Fret4String6: UIButton!
    
    // 5 Fret
    
    @IBOutlet weak var Fret5String1: UIButton!
    @IBOutlet weak var Fret5String2: UIButton!
    @IBOutlet weak var Fret5String3: UIButton!
    @IBOutlet weak var Fret5String4: UIButton!
    @IBOutlet weak var Fret5String5: UIButton!
    @IBOutlet weak var Fret5String6: UIButton!
    
    // 6 Fret
    
    @IBOutlet weak var Fret6String1: UIButton!
    @IBOutlet weak var Fret6String2: UIButton!
    @IBOutlet weak var Fret6String3: UIButton!
    @IBOutlet weak var Fret6String4: UIButton!
    @IBOutlet weak var Fret6String5: UIButton!
    @IBOutlet weak var Fret6String6: UIButton!
    
    // 7 Fret
    
    @IBOutlet weak var Fret7String1: UIButton!
    @IBOutlet weak var Fret7String2: UIButton!
    @IBOutlet weak var Fret7String3: UIButton!
    @IBOutlet weak var Fret7String4: UIButton!
    @IBOutlet weak var Fret7String5: UIButton!
    @IBOutlet weak var Fret7String6: UIButton!
    
    // 8 Fret
    
    @IBOutlet weak var Fret8String1: UIButton!
    @IBOutlet weak var Fret8String2: UIButton!
    @IBOutlet weak var Fret8String3: UIButton!
    @IBOutlet weak var Fret8String4: UIButton!
    @IBOutlet weak var Fret8String5: UIButton!
    @IBOutlet weak var Fret8String6: UIButton!
    
    // 9 Fret
    
    @IBOutlet weak var Fret9String1: UIButton!
    @IBOutlet weak var Fret9String2: UIButton!
    @IBOutlet weak var Fret9String3: UIButton!
    @IBOutlet weak var Fret9String4: UIButton!
    @IBOutlet weak var Fret9String5: UIButton!
    @IBOutlet weak var Fret9String6: UIButton!
    
    // 10 Fret
    
    @IBOutlet weak var Fret10String1: UIButton!
    @IBOutlet weak var Fret10String2: UIButton!
    @IBOutlet weak var Fret10String3: UIButton!
    @IBOutlet weak var Fret10String4: UIButton!
    @IBOutlet weak var Fret10String5: UIButton!
    @IBOutlet weak var Fret10String6: UIButton!
    
    // 11 Fret
    
    @IBOutlet weak var Fret11String1: UIButton!
    @IBOutlet weak var Fret11String2: UIButton!
    @IBOutlet weak var Fret11String3: UIButton!
    @IBOutlet weak var Fret11String4: UIButton!
    @IBOutlet weak var Fret11String5: UIButton!
    @IBOutlet weak var Fret11String6: UIButton!
    
    // 12 Fret
    
    @IBOutlet weak var Fret12String1: UIButton!
    @IBOutlet weak var Fret12String2: UIButton!
    @IBOutlet weak var Fret12String3: UIButton!
    @IBOutlet weak var Fret12String4: UIButton!
    @IBOutlet weak var Fret12String5: UIButton!
    @IBOutlet weak var Fret12String6: UIButton!
    
    // 13 Fret
    
    @IBOutlet weak var Fret13String1: UIButton!
    @IBOutlet weak var Fret13String2: UIButton!
    @IBOutlet weak var Fret13String3: UIButton!
    @IBOutlet weak var Fret13String4: UIButton!
    @IBOutlet weak var Fret13String5: UIButton!
    @IBOutlet weak var Fret13String6: UIButton!
    
    // 14 Fret
    
    @IBOutlet weak var Fret14String1: UIButton!
    @IBOutlet weak var Fret14String2: UIButton!
    @IBOutlet weak var Fret14String3: UIButton!
    @IBOutlet weak var Fret14String4: UIButton!
    @IBOutlet weak var Fret14String5: UIButton!
    @IBOutlet weak var Fret14String6: UIButton!
    
    // 15 Fret
    
    @IBOutlet weak var Fret15String1: UIButton!
    @IBOutlet weak var Fret15String2: UIButton!
    @IBOutlet weak var Fret15String3: UIButton!
    @IBOutlet weak var Fret15String4: UIButton!
    @IBOutlet weak var Fret15String5: UIButton!
    @IBOutlet weak var Fret15String6: UIButton!
    
    // 16 Fret
    
    @IBOutlet weak var Fret16String1: UIButton!
    @IBOutlet weak var Fret16String2: UIButton!
    @IBOutlet weak var Fret16String3: UIButton!
    @IBOutlet weak var Fret16String4: UIButton!
    @IBOutlet weak var Fret16String5: UIButton!
    @IBOutlet weak var Fret16String6: UIButton!
    
    // 17 Fret
    
    @IBOutlet weak var Fret17String1: UIButton!
    @IBOutlet weak var Fret17String2: UIButton!
    @IBOutlet weak var Fret17String3: UIButton!
    @IBOutlet weak var Fret17String4: UIButton!
    @IBOutlet weak var Fret17String5: UIButton!
    @IBOutlet weak var Fret17String6: UIButton!
    
    // 18 Fret
    
    @IBOutlet weak var Fret18String1: UIButton!
    @IBOutlet weak var Fret18String2: UIButton!
    @IBOutlet weak var Fret18String3: UIButton!
    @IBOutlet weak var Fret18String4: UIButton!
    @IBOutlet weak var Fret18String5: UIButton!
    @IBOutlet weak var Fret18String6: UIButton!
    
    // 19 Fret
    
    @IBOutlet weak var Fret19String1: UIButton!
    @IBOutlet weak var Fret19String2: UIButton!
    @IBOutlet weak var Fret19String3: UIButton!
    @IBOutlet weak var Fret19String4: UIButton!
    @IBOutlet weak var Fret19String5: UIButton!
    @IBOutlet weak var Fret19String6: UIButton!
    
    // 20 Fret
    
    @IBOutlet weak var Fret20String1: UIButton!
    @IBOutlet weak var Fret20String2: UIButton!
    @IBOutlet weak var Fret20String3: UIButton!
    @IBOutlet weak var Fret20String4: UIButton!
    @IBOutlet weak var Fret20String5: UIButton!
    @IBOutlet weak var Fret20String6: UIButton!
    
    // 21 Fret
    
    @IBOutlet weak var Fret21String1: UIButton!
    @IBOutlet weak var Fret21String2: UIButton!
    @IBOutlet weak var Fret21String3: UIButton!
    @IBOutlet weak var Fret21String4: UIButton!
    @IBOutlet weak var Fret21String5: UIButton!
    @IBOutlet weak var Fret21String6: UIButton!
    
    // 22 Fret
    
    @IBOutlet weak var Fret22String1: UIButton!
    @IBOutlet weak var Fret22String2: UIButton!
    @IBOutlet weak var Fret22String3: UIButton!
    @IBOutlet weak var Fret22String4: UIButton!
    @IBOutlet weak var Fret22String5: UIButton!
    @IBOutlet weak var Fret22String6: UIButton!
    
    // 23 Fret
    
    @IBOutlet weak var Fret23String1: UIButton!
    @IBOutlet weak var Fret23String2: UIButton!
    @IBOutlet weak var Fret23String3: UIButton!
    @IBOutlet weak var Fret23String4: UIButton!
    @IBOutlet weak var Fret23String5: UIButton!
    @IBOutlet weak var Fret23String6: UIButton!
    
    // 24 Fret
    
    @IBOutlet weak var Fret24String1: UIButton!
    @IBOutlet weak var Fret24String2: UIButton!
    @IBOutlet weak var Fret24String3: UIButton!
    @IBOutlet weak var Fret24String4: UIButton!
    @IBOutlet weak var Fret24String5: UIButton!
    @IBOutlet weak var Fret24String6: UIButton!
    
    /* ————————————————————————————————————————————————————————————————————————— */
    
    
    /* ————————————————————————— Frets ————————————————————————— */
    
    @IBOutlet weak var fret1: UILabel!
    @IBOutlet weak var fret2: UILabel!
    @IBOutlet weak var fret3: UILabel!
    @IBOutlet weak var fret4: UILabel!
    @IBOutlet weak var fret5: UILabel!
    @IBOutlet weak var fret6: UILabel!
    @IBOutlet weak var fret7: UILabel!
    @IBOutlet weak var fret8: UILabel!
    @IBOutlet weak var fret9: UILabel!
    @IBOutlet weak var fret10: UILabel!
    @IBOutlet weak var fret11: UILabel!
    @IBOutlet weak var fret12: UILabel!
    @IBOutlet weak var fret13: UILabel!
    @IBOutlet weak var fret14: UILabel!
    @IBOutlet weak var fret15: UILabel!
    @IBOutlet weak var fret16: UILabel!
    @IBOutlet weak var fret17: UILabel!
    @IBOutlet weak var fret18: UILabel!
    @IBOutlet weak var fret19: UILabel!
    @IBOutlet weak var fret20: UILabel!
    @IBOutlet weak var fret21: UILabel!
    @IBOutlet weak var fret22: UILabel!
    @IBOutlet weak var fret23: UILabel!
    @IBOutlet weak var fret24: UILabel!
    
    /* ——————————————————————————————————————————————————————————*/
    
    
    /* —————————————— Tunning Labels On Punch Board —————————————— */
    
    @IBOutlet weak var FSTStringPunchLabel: UILabel!
    @IBOutlet weak var SCNDStringPunchLabel: UILabel!
    @IBOutlet weak var THRDStringPunchLabel: UILabel!
    @IBOutlet weak var FRTHStringPunchLabel: UILabel!
    @IBOutlet weak var FIFTHStringPunchLabel: UILabel!
    @IBOutlet weak var SIXTHStringPunchLabel: UILabel!
    
    /* ——————————————————————————————————————————————————————————— */
    
    
    /* ———————————————————— Other UI Elements ———————————————————— */
    
    @IBOutlet var TunningView: UITextField!
    @IBOutlet var ChordTextField: UITextField!
    @IBOutlet var SettingsButton: UIButton!
    @IBOutlet var InfoButton: UIButton!
    
    var textForTunningTextField: String? = nil
    
    var eachFretLabels: [UILabel]? = nil
    var fretLabels: [UILabel]? = nil
    var onPunchTunningLabels: [UILabel]? = nil
    
    var guitarStanOn: [[UIButton]]? = nil
    
    var notes: [UIButton : [UIImage?]]? = nil
    
    /* ——————————————————————————————————————————————————————————— */
    
    
    /* ———————————————— Notes COntainers By Fret ————————————————— */
    
    var fret1strings : [UIButton]? = nil
    var fret2strings : [UIButton]? = nil
    var fret3strings : [UIButton]? = nil
    var fret4strings : [UIButton]? = nil
    var fret5strings : [UIButton]? = nil
    var fret6strings : [UIButton]? = nil
    var fret7strings : [UIButton]? = nil
    var fret8strings : [UIButton]? = nil
    var fret9strings : [UIButton]? = nil
    var fret10strings : [UIButton]? = nil
    var fret11strings : [UIButton]? = nil
    var fret12strings : [UIButton]? = nil
    var fret13strings : [UIButton]? = nil
    var fret14strings : [UIButton]? = nil
    var fret15strings : [UIButton]? = nil
    var fret16strings : [UIButton]? = nil
    var fret17strings : [UIButton]? = nil
    var fret18strings : [UIButton]? = nil
    var fret19strings : [UIButton]? = nil
    var fret20strings : [UIButton]? = nil
    var fret21strings : [UIButton]? = nil
    var fret22strings : [UIButton]? = nil
    var fret23strings : [UIButton]? = nil
    var fret24strings : [UIButton]? = nil
    
    /* ——————————————————————————————————————————————————————————— */
    
    
    
    //Other options
    var chordProperties: ChordSettings!
    
    //MARK: - Launching...
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        notes = [
            // F***ing shit...    open G                openD                  Standart            modalD               dropD
            Fret1String1 : [UIImage(named: "D#"), UIImage(named: "D#"), UIImage(named: "F"), UIImage(named: "D#"), UIImage(named: "F")],
            Fret1String2 : [UIImage(named: "C"), UIImage(named: "A#"), UIImage(named: "C"), UIImage(named: "A#"), UIImage(named: "C")],
            Fret1String3 : [UIImage(named: "G#"), UIImage(named: "G"), UIImage(named: "G#"), UIImage(named: "G#"), UIImage(named: "G#")],
            Fret1String4 : [UIImage(named: "D#"), UIImage(named: "D#"), UIImage(named: "D#"), UIImage(named: "D#"), UIImage(named: "D#")],
            Fret1String5 : [UIImage(named: "G#"), UIImage(named: "A#"), UIImage(named: "A#"), UIImage(named: "A#"), UIImage(named: "A#")],
            Fret1String6 : [UIImage(named: "D#"), UIImage(named: "D#"), UIImage(named: "F"), UIImage(named: "D#"), UIImage(named: "D#")],
            
            Fret2String1 : [UIImage(named: "E"), UIImage(named: "E"), UIImage(named: "F#"), UIImage(named: "E"), UIImage(named: "F#")],
            Fret2String2 : [UIImage(named: "C#"), UIImage(named: "B"), UIImage(named: "C#"), UIImage(named: "B"), UIImage(named: "C#")],
            Fret2String3 : [UIImage(named: "A"), UIImage(named: "G#"), UIImage(named: "A"), UIImage(named: "A"), UIImage(named: "A")],
            Fret2String4 : [UIImage(named: "E"), UIImage(named: "E"), UIImage(named: "E"), UIImage(named: "E"), UIImage(named: "E")],
            Fret2String5 : [UIImage(named: "A"), UIImage(named: "B"), UIImage(named: "B"), UIImage(named: "B"), UIImage(named: "B")],
            Fret2String6 : [UIImage(named: "E"), UIImage(named: "E"), UIImage(named: "F#"), UIImage(named: "E"), UIImage(named: "E")],
            
            Fret3String1 : [UIImage(named: "F"), UIImage(named: "F"), UIImage(named: "G"), UIImage(named: "F"), UIImage(named: "G")],
            Fret3String2 : [UIImage(named: "D"), UIImage(named: "C"), UIImage(named: "D"), UIImage(named: "C"), UIImage(named: "D")],
            Fret3String3 : [UIImage(named: "A#"), UIImage(named: "A"), UIImage(named: "A#"), UIImage(named: "A#"), UIImage(named: "A#")],
            Fret3String4 : [UIImage(named: "F"), UIImage(named: "F"), UIImage(named: "F"), UIImage(named: "F"), UIImage(named: "F")],
            Fret3String5 : [UIImage(named: "A#"), UIImage(named: "C"), UIImage(named: "C"), UIImage(named: "C"), UIImage(named: "C")],
            Fret3String6 : [UIImage(named: "F"), UIImage(named: "F"), UIImage(named: "G"), UIImage(named: "F"), UIImage(named: "F")],
            
            Fret4String1 : [UIImage(named: "F#"), UIImage(named: "F#"), UIImage(named: "G#"), UIImage(named: "F#"), UIImage(named: "G#")],
            Fret4String2 : [UIImage(named: "D#"), UIImage(named: "C#"), UIImage(named: "D#"), UIImage(named: "C#"), UIImage(named: "D#")],
            Fret4String3 : [UIImage(named: "B"), UIImage(named: "A#"), UIImage(named: "B"), UIImage(named: "B"), UIImage(named: "B")],
            Fret4String4 : [UIImage(named: "F#"), UIImage(named: "F#"), UIImage(named: "F#"), UIImage(named: "F#"), UIImage(named: "F#")],
            Fret4String5 : [UIImage(named: "B"), UIImage(named: "C#"), UIImage(named: "C#"), UIImage(named: "C#"), UIImage(named: "C#")],
            Fret4String6 : [UIImage(named: "F#"), UIImage(named: "F#"), UIImage(named: "G#"), UIImage(named: "F#"), UIImage(named: "F#")],
            
            Fret5String1 : [UIImage(named: "G"), UIImage(named: "G"), UIImage(named: "A"), UIImage(named: "G"), UIImage(named: "A")],
            Fret5String2 : [UIImage(named: "E"), UIImage(named: "D"), UIImage(named: "E"), UIImage(named: "D"), UIImage(named: "E")],
            Fret5String3 : [UIImage(named: "C"), UIImage(named: "B"), UIImage(named: "C"), UIImage(named: "C"), UIImage(named: "C")],
            Fret5String4 : [UIImage(named: "G"), UIImage(named: "G"), UIImage(named: "G"), UIImage(named: "G"), UIImage(named: "G")],
            Fret5String5 : [UIImage(named: "C"), UIImage(named: "D"), UIImage(named: "D"), UIImage(named: "D"), UIImage(named: "D")],
            Fret5String6 : [UIImage(named: "G"), UIImage(named: "G"), UIImage(named: "A"), UIImage(named: "G"), UIImage(named: "G")],
            
            Fret6String1 : [UIImage(named: "G#"), UIImage(named: "G#"), UIImage(named: "A#"), UIImage(named: "G#"), UIImage(named: "A#")],
            Fret6String2 : [UIImage(named: "F"), UIImage(named: "D#"), UIImage(named: "F"), UIImage(named: "D#"), UIImage(named: "F")],
            Fret6String3 : [UIImage(named: "C#"), UIImage(named: "C"), UIImage(named: "C#"), UIImage(named: "C#"), UIImage(named: "C#")],
            Fret6String4 : [UIImage(named: "G#"), UIImage(named: "G#"), UIImage(named: "G#"), UIImage(named: "G#"), UIImage(named: "G#")],
            Fret6String5 : [UIImage(named: "C#"), UIImage(named: "D#"), UIImage(named: "D#"), UIImage(named: "D#"), UIImage(named: "D#")],
            Fret6String6 : [UIImage(named: "G#"), UIImage(named: "G#"), UIImage(named: "A#"), UIImage(named: "G#"), UIImage(named: "G#")],
            
            Fret7String1 : [UIImage(named: "A"), UIImage(named: "A"), UIImage(named: "B"), UIImage(named: "A"), UIImage(named: "B")],
            Fret7String2 : [UIImage(named: "F#"), UIImage(named: "E"), UIImage(named: "F#"), UIImage(named: "E"), UIImage(named: "F#")],
            Fret7String3 : [UIImage(named: "D"), UIImage(named: "C#"), UIImage(named: "D"), UIImage(named: "D"), UIImage(named: "D")],
            Fret7String4 : [UIImage(named: "A"), UIImage(named: "A"), UIImage(named: "A"), UIImage(named: "A"), UIImage(named: "A")],
            Fret7String5 : [UIImage(named: "D"), UIImage(named: "E"), UIImage(named: "E"), UIImage(named: "E"), UIImage(named: "E")],
            Fret7String6 : [UIImage(named: "A"), UIImage(named: "A"), UIImage(named: "B"), UIImage(named: "A"), UIImage(named: "A")],
            
            Fret8String1 : [UIImage(named: "A#"), UIImage(named: "A#"), UIImage(named: "C"), UIImage(named: "A#"), UIImage(named: "C")],
            Fret8String2 : [UIImage(named: "G"), UIImage(named: "F"), UIImage(named: "G"), UIImage(named: "F"), UIImage(named: "G")],
            Fret8String3 : [UIImage(named: "D#"), UIImage(named: "D"), UIImage(named: "D#"), UIImage(named: "D#"), UIImage(named: "D#")],
            Fret8String4 : [UIImage(named: "A#"), UIImage(named: "A#"), UIImage(named: "A#"), UIImage(named: "A#"), UIImage(named: "A#")],
            Fret8String5 : [UIImage(named: "D#"), UIImage(named: "F"), UIImage(named: "F"), UIImage(named: "F"), UIImage(named: "D")],
            Fret8String6 : [UIImage(named: "A#"), UIImage(named: "A#"), UIImage(named: "C"), UIImage(named: "A#"), UIImage(named: "A#")],
            
            Fret9String1 : [UIImage(named: "B"), UIImage(named: "B"), UIImage(named: "C#"), UIImage(named: "B"), UIImage(named: "C#")],
            Fret9String2 : [UIImage(named: "G#"), UIImage(named: "F#"), UIImage(named: "G#"), UIImage(named: "F#"), UIImage(named: "G#")],
            Fret9String3 : [UIImage(named: "E"), UIImage(named: "D#"), UIImage(named: "E"), UIImage(named: "E"), UIImage(named: "E")],
            Fret9String4 : [UIImage(named: "B"), UIImage(named: "B"), UIImage(named: "B"), UIImage(named: "B"), UIImage(named: "B")],
            Fret9String5 : [UIImage(named: "E"), UIImage(named: "F#"), UIImage(named: "F#"), UIImage(named: "F#"), UIImage(named: "F#")],
            Fret9String6 : [UIImage(named: "B"), UIImage(named: "B"), UIImage(named: "C#"), UIImage(named: "B"), UIImage(named: "B")],
            
            Fret10String1 : [UIImage(named: "C"), UIImage(named: "C"), UIImage(named: "D"), UIImage(named: "C"), UIImage(named: "D")],
            Fret10String2 : [UIImage(named: "A"), UIImage(named: "G"), UIImage(named: "A"), UIImage(named: "G"), UIImage(named: "A")],
            Fret10String3 : [UIImage(named: "F"), UIImage(named: "E"), UIImage(named: "F"), UIImage(named: "F"), UIImage(named: "F")],
            Fret10String4 : [UIImage(named: "C"), UIImage(named: "C"), UIImage(named: "C"), UIImage(named: "C"), UIImage(named: "C")],
            Fret10String5 : [UIImage(named: "F"), UIImage(named: "G"), UIImage(named: "G"), UIImage(named: "G"), UIImage(named: "G")],
            Fret10String6 : [UIImage(named: "C"), UIImage(named: "C"), UIImage(named: "A"), UIImage(named: "C"), UIImage(named: "C")],
            
            Fret11String1 : [UIImage(named: "C#"), UIImage(named: "C#"), UIImage(named: "D#"), UIImage(named: "C#"), UIImage(named: "D#")],
            Fret11String2 : [UIImage(named: "A#"), UIImage(named: "G#"), UIImage(named: "A#"), UIImage(named: "G#"), UIImage(named: "A#")],
            Fret11String3 : [UIImage(named: "F#"), UIImage(named: "F"), UIImage(named: "F#"), UIImage(named: "F#"), UIImage(named: "F#")],
            Fret11String4 : [UIImage(named: "C#"), UIImage(named: "C#"), UIImage(named: "C#"), UIImage(named: "C#"), UIImage(named: "C#")],
            Fret11String5 : [UIImage(named: "F#"), UIImage(named: "G#"), UIImage(named: "G#"), UIImage(named: "G#"), UIImage(named: "G#")],
            Fret11String6 : [UIImage(named: "C#"), UIImage(named: "C#"), UIImage(named: "D#"), UIImage(named: "C#"), UIImage(named: "C#")],
            
            Fret12String1 : [UIImage(named: "D"), UIImage(named: "D"), UIImage(named: "E"), UIImage(named: "D"), UIImage(named: "E")],
            Fret12String2 : [UIImage(named: "B"), UIImage(named: "A"), UIImage(named: "B"), UIImage(named: "A"), UIImage(named: "B")],
            Fret12String3 : [UIImage(named: "G"), UIImage(named: "F#"), UIImage(named: "G"), UIImage(named: "G"), UIImage(named: "G")],
            Fret12String4 : [UIImage(named: "D"), UIImage(named: "D"), UIImage(named: "D"), UIImage(named: "D"), UIImage(named: "D")],
            Fret12String5 : [UIImage(named: "G"), UIImage(named: "A"), UIImage(named: "A"), UIImage(named: "A"), UIImage(named: "A")],
            Fret12String6 : [UIImage(named: "D"), UIImage(named: "D"), UIImage(named: "E"), UIImage(named: "D"), UIImage(named: "D")],
            
            Fret13String1 : [UIImage(named: "D#"), UIImage(named: "D#"), UIImage(named: "F"), UIImage(named: "D#"), UIImage(named: "F")],
            Fret13String2 : [UIImage(named: "C"), UIImage(named: "A#"), UIImage(named: "C"), UIImage(named: "A#"), UIImage(named: "C")],
            Fret13String3 : [UIImage(named: "G#"), UIImage(named: "G"), UIImage(named: "G#"), UIImage(named: "G#"), UIImage(named: "G#")],
            Fret13String4 : [UIImage(named: "D#"), UIImage(named: "D#"), UIImage(named: "D#"), UIImage(named: "D#"), UIImage(named: "D#")],
            Fret13String5 : [UIImage(named: "G#"), UIImage(named: "A#"), UIImage(named: "A#"), UIImage(named: "A#"), UIImage(named: "A#")],
            Fret13String6 : [UIImage(named: "D#"), UIImage(named: "D#"), UIImage(named: "F"), UIImage(named: "D#"), UIImage(named: "D#")],
            
            Fret14String1 : [UIImage(named: "E"), UIImage(named: "E"), UIImage(named: "F#"), UIImage(named: "E"), UIImage(named: "F#")],
            Fret14String2 : [UIImage(named: "C#"), UIImage(named: "B"), UIImage(named: "C#"), UIImage(named: "B"), UIImage(named: "C#")],
            Fret14String3 : [UIImage(named: "A"), UIImage(named: "G#"), UIImage(named: "A"), UIImage(named: "A"), UIImage(named: "A")],
            Fret14String4 : [UIImage(named: "E"), UIImage(named: "E"), UIImage(named: "E"), UIImage(named: "E"), UIImage(named: "E")],
            Fret14String5 : [UIImage(named: "A"), UIImage(named: "B"), UIImage(named: "B"), UIImage(named: "B"), UIImage(named: "B")],
            Fret14String6 : [UIImage(named: "E"), UIImage(named: "E"), UIImage(named: "F#"), UIImage(named: "E"), UIImage(named: "E")],
            
            Fret15String1 : [UIImage(named: "F"), UIImage(named: "F"), UIImage(named: "G"), UIImage(named: "F"), UIImage(named: "G")],
            Fret15String2 : [UIImage(named: "D"), UIImage(named: "C"), UIImage(named: "D"), UIImage(named: "C"), UIImage(named: "D")],
            Fret15String3 : [UIImage(named: "A#"), UIImage(named: "A"), UIImage(named: "A#"), UIImage(named: "A#"), UIImage(named: "A#")],
            Fret15String4 : [UIImage(named: "F"), UIImage(named: "F"), UIImage(named: "F"), UIImage(named: "F"), UIImage(named: "F")],
            Fret15String5 : [UIImage(named: "A#"), UIImage(named: "C"), UIImage(named: "C"), UIImage(named: "C"), UIImage(named: "C")],
            Fret15String6 : [UIImage(named: "F"), UIImage(named: "F"), UIImage(named: "G"), UIImage(named: "F"), UIImage(named: "F")],
            
            Fret16String1 : [UIImage(named: "F#"), UIImage(named: "F#"), UIImage(named: "G#"), UIImage(named: "F#"), UIImage(named: "G#")],
            Fret16String2 : [UIImage(named: "D#"), UIImage(named: "C#"), UIImage(named: "D#"), UIImage(named: "C#"), UIImage(named: "D#")],
            Fret16String3 : [UIImage(named: "B"), UIImage(named: "A#"), UIImage(named: "B"), UIImage(named: "B"), UIImage(named: "B")],
            Fret16String4 : [UIImage(named: "F#"), UIImage(named: "F#"), UIImage(named: "F#"), UIImage(named: "F#"), UIImage(named: "F#")],
            Fret16String5 : [UIImage(named: "B"), UIImage(named: "C#"), UIImage(named: "C#"), UIImage(named: "C#"), UIImage(named: "C#")],
            Fret16String6 : [UIImage(named: "F#"), UIImage(named: "F#"), UIImage(named: "G#"), UIImage(named: "F#"), UIImage(named: "F#")],
            
            Fret17String1 : [UIImage(named: "G"), UIImage(named: "G"), UIImage(named: "A"), UIImage(named: "G"), UIImage(named: "A")],
            Fret17String2 : [UIImage(named: "E"), UIImage(named: "D"), UIImage(named: "E"), UIImage(named: "D"), UIImage(named: "E")],
            Fret17String3 : [UIImage(named: "C"), UIImage(named: "B"), UIImage(named: "C"), UIImage(named: "C"), UIImage(named: "C")],
            Fret17String4 : [UIImage(named: "G"), UIImage(named: "G"), UIImage(named: "G"), UIImage(named: "G"), UIImage(named: "G")],
            Fret17String5 : [UIImage(named: "C"), UIImage(named: "D"), UIImage(named: "D"), UIImage(named: "D"), UIImage(named: "D")],
            Fret17String6 : [UIImage(named: "G"), UIImage(named: "G"), UIImage(named: "A"), UIImage(named: "G"), UIImage(named: "G")],
            
            Fret18String1 : [UIImage(named: "G#"), UIImage(named: "G#"), UIImage(named: "A#"), UIImage(named: "G#"), UIImage(named: "A#")],
            Fret18String2 : [UIImage(named: "F"), UIImage(named: "D#"), UIImage(named: "F"), UIImage(named: "D#"), UIImage(named: "F")],
            Fret18String3 : [UIImage(named: "C#"), UIImage(named: "C"), UIImage(named: "C#"), UIImage(named: "C#"), UIImage(named: "C#")],
            Fret18String4 : [UIImage(named: "G#"), UIImage(named: "G#"), UIImage(named: "G#"), UIImage(named: "G#"), UIImage(named: "G#")],
            Fret18String5 : [UIImage(named: "C#"), UIImage(named: "D#"), UIImage(named: "D#"), UIImage(named: "D#"), UIImage(named: "D#")],
            Fret18String6 : [UIImage(named: "G#"), UIImage(named: "G#"), UIImage(named: "A#"), UIImage(named: "G#"), UIImage(named: "G#")],
            
            Fret19String1 : [UIImage(named: "A"), UIImage(named: "A"), UIImage(named: "B"), UIImage(named: "A"), UIImage(named: "B")],
            Fret19String2 : [UIImage(named: "F#"), UIImage(named: "E"), UIImage(named: "F@"), UIImage(named: "E"), UIImage(named: "F#")],
            Fret19String3 : [UIImage(named: "D"), UIImage(named: "C#"), UIImage(named: "D"), UIImage(named: "D"), UIImage(named: "D")],
            Fret19String4 : [UIImage(named: "A"), UIImage(named: "A"), UIImage(named: "A"), UIImage(named: "A"), UIImage(named: "A")],
            Fret19String5 : [UIImage(named: "D"), UIImage(named: "E"), UIImage(named: "E"), UIImage(named: "E"), UIImage(named: "E")],
            Fret19String6 : [UIImage(named: "A"), UIImage(named: "A"), UIImage(named: "B"), UIImage(named: "A"), UIImage(named: "A")],
            
            Fret20String1 : [UIImage(named: "A#"), UIImage(named: "A#"), UIImage(named: "C"), UIImage(named: "A#"), UIImage(named: "C")],
            Fret20String2 : [UIImage(named: "G"), UIImage(named: "F"), UIImage(named: "G"), UIImage(named: "F"), UIImage(named: "G")],
            Fret20String3 : [UIImage(named: "D#"), UIImage(named: "D"), UIImage(named: "D#"), UIImage(named: "D#"), UIImage(named: "D#")],
            Fret20String4 : [UIImage(named: "A#"), UIImage(named: "A#"), UIImage(named: "A#"), UIImage(named: "A#"), UIImage(named: "A#")],
            Fret20String5 : [UIImage(named: "D#"), UIImage(named: "F"), UIImage(named: "F"), UIImage(named: "F"), UIImage(named: "F#")],
            Fret20String6 : [UIImage(named: "A#"), UIImage(named: "A#"), UIImage(named: "C"), UIImage(named: "A#"), UIImage(named: "A#")],
            
            Fret21String1 : [UIImage(named: "B"), UIImage(named: "B"), UIImage(named: "C#"), UIImage(named: "B"), UIImage(named: "C#")],
            Fret21String2 : [UIImage(named: "G#"), UIImage(named: "F#"), UIImage(named: "G#"), UIImage(named: "F#"), UIImage(named: "G#")],
            Fret21String3 : [UIImage(named: "E"), UIImage(named: "D#"), UIImage(named: "E"), UIImage(named: "E"), UIImage(named: "E")],
            Fret21String4 : [UIImage(named: "B"), UIImage(named: "B"), UIImage(named: "B"), UIImage(named: "B"), UIImage(named: "B")],
            Fret21String5 : [UIImage(named: "E"), UIImage(named: "F#"), UIImage(named: "F#"), UIImage(named: "F#"), UIImage(named: "F#")],
            Fret21String6 : [UIImage(named: "B"), UIImage(named: "B"), UIImage(named: "C#"), UIImage(named: "B"), UIImage(named: "B")],
            
            Fret22String1 : [UIImage(named: "C"), UIImage(named: "C"), UIImage(named: "D"), UIImage(named: "C"), UIImage(named: "D")],
            Fret22String2 : [UIImage(named: "A"), UIImage(named: "G"), UIImage(named: "A"), UIImage(named: "G"), UIImage(named: "A")],
            Fret22String3 : [UIImage(named: "F"), UIImage(named: "E"), UIImage(named: "F"), UIImage(named: "F"), UIImage(named: "F")],
            Fret22String4 : [UIImage(named: "C"), UIImage(named: "C"), UIImage(named: "C"), UIImage(named: "C"), UIImage(named: "C")],
            Fret22String5 : [UIImage(named: "F"), UIImage(named: "G"), UIImage(named: "G"), UIImage(named: "G"), UIImage(named: "G")],
            Fret22String6 : [UIImage(named: "C"), UIImage(named: "C"), UIImage(named: "D"), UIImage(named: "C"), UIImage(named: "C")],
            
            Fret23String1 : [UIImage(named: "C#"), UIImage(named: "C#"), UIImage(named: "D#"), UIImage(named: "C#"), UIImage(named: "D#")],
            Fret23String2 : [UIImage(named: "A#"), UIImage(named: "G#"), UIImage(named: "A#"), UIImage(named: "G#"), UIImage(named: "A#")],
            Fret23String3 : [UIImage(named: "F#"), UIImage(named: "F"), UIImage(named: "F#"), UIImage(named: "F#"), UIImage(named: "F#")],
            Fret23String4 : [UIImage(named: "C#"), UIImage(named: "C#"), UIImage(named: "C#"), UIImage(named: "C#"), UIImage(named: "C#")],
            Fret23String5 : [UIImage(named: "F#"), UIImage(named: "G#"), UIImage(named: "G#"), UIImage(named: "G#"), UIImage(named: "G#")],
            Fret23String6 : [UIImage(named: "C#"), UIImage(named: "C#"), UIImage(named: "D#"), UIImage(named: "C#"), UIImage(named: "C#")],
            
            Fret24String1 : [UIImage(named: "D"), UIImage(named: "D"), UIImage(named: "E"), UIImage(named: "D"), UIImage(named: "E")],
            Fret24String2 : [UIImage(named: "B"), UIImage(named: "A"), UIImage(named: "B"), UIImage(named: "A"), UIImage(named: "B")],
            Fret24String3 : [UIImage(named: "G"), UIImage(named: "F#"), UIImage(named: "G"), UIImage(named: "G"), UIImage(named: "G")],
            Fret24String4 : [UIImage(named: "D"), UIImage(named: "D"), UIImage(named: "D"), UIImage(named: "D"), UIImage(named: "D")],
            Fret24String5 : [UIImage(named: "G"), UIImage(named: "A"), UIImage(named: "A"), UIImage(named: "A"), UIImage(named: "A")],
            Fret24String6 : [UIImage(named: "D"), UIImage(named: "D"), UIImage(named: "E"), UIImage(named: "D"), UIImage(named: "D")],
            
        ]
        
        
        fret1strings = [ Fret1String1, Fret1String2, Fret1String3, Fret1String4, Fret1String5, Fret1String6 ]
        fret2strings = [ Fret2String1, Fret2String2, Fret2String3, Fret2String4, Fret2String5, Fret2String6 ]
        fret3strings = [ Fret3String1, Fret3String2, Fret3String3, Fret3String4, Fret3String5, Fret3String6 ]
        fret4strings = [ Fret4String1, Fret4String2, Fret4String3, Fret4String4, Fret4String5, Fret4String6 ]
        fret5strings = [ Fret5String1, Fret5String2, Fret5String3, Fret5String4, Fret5String5, Fret5String6 ]
        fret6strings = [ Fret6String1, Fret6String2, Fret6String3, Fret6String4, Fret6String5, Fret6String6 ]
        fret7strings = [ Fret7String1, Fret7String2, Fret7String3, Fret7String4, Fret7String5, Fret7String6 ]
        fret8strings = [ Fret8String1, Fret8String2, Fret8String3, Fret8String4, Fret8String5, Fret8String6 ]
        fret9strings = [ Fret9String1, Fret9String2, Fret9String3, Fret9String4, Fret9String5, Fret9String6 ]
        fret10strings = [ Fret10String1, Fret10String2, Fret10String3, Fret10String4, Fret10String5, Fret10String6 ]
        fret11strings = [ Fret11String1, Fret11String2, Fret11String3, Fret11String4, Fret11String5, Fret11String6 ]
        fret12strings = [ Fret12String1, Fret12String2, Fret12String3, Fret12String4, Fret12String5, Fret12String6 ]
        fret13strings = [ Fret13String1, Fret13String2, Fret13String3, Fret13String4, Fret13String5, Fret13String6 ]
        fret14strings = [ Fret14String1, Fret14String2, Fret14String3, Fret14String4, Fret14String5, Fret14String6 ]
        fret15strings = [ Fret15String1, Fret15String2, Fret15String3, Fret15String4, Fret15String5, Fret15String6 ]
        fret16strings = [ Fret16String1, Fret16String2, Fret16String3, Fret16String4, Fret16String5, Fret16String6 ]
        fret17strings = [ Fret17String1, Fret17String2, Fret17String3, Fret17String4, Fret17String5, Fret17String6 ]
        fret18strings = [ Fret18String1, Fret18String2, Fret18String3, Fret18String4, Fret18String5, Fret18String6 ]
        fret19strings = [ Fret19String1, Fret19String2, Fret19String3, Fret19String4, Fret19String5, Fret19String6 ]
        fret20strings = [ Fret20String1, Fret20String2, Fret20String3, Fret20String4, Fret20String5, Fret20String6 ]
        fret21strings = [ Fret21String1, Fret21String2, Fret21String3, Fret21String4, Fret21String5, Fret21String6 ]
        fret22strings = [ Fret22String1, Fret22String2, Fret22String3, Fret22String4, Fret22String5, Fret22String6 ]
        fret23strings = [ Fret23String1, Fret23String2, Fret23String3, Fret23String4, Fret23String5, Fret23String6 ]
        fret24strings = [ Fret24String1, Fret24String2, Fret24String3, Fret24String4, Fret24String5, Fret24String6 ]
        
        guitarStanOn = [fret1strings!, fret2strings!, fret3strings!,
                        fret4strings!, fret5strings!, fret6strings!,
                        fret7strings!, fret8strings!, fret9strings!,
                        fret10strings!, fret11strings!, fret12strings!,
                        fret13strings!, fret14strings!, fret15strings!,
                        fret16strings!, fret17strings!, fret18strings!,
                        fret19strings!, fret20strings!, fret21strings!,
                        fret22strings!, fret23strings!, fret24strings!]
        
        eachFretLabels = [fret1, fret2, fret3,
                          fret4, fret5, fret6,
                          fret7, fret8, fret9,
                          fret10, fret11, fret12,
                          fret13, fret14, fret15,
                          fret16, fret17, fret18,
                          fret19, fret20, fret21,
                          fret22, fret23, fret24]
        
        fretLabels = [fret1, fret3, fret5,
                      fret7, fret9, fret12,
                      fret15, fret17, fret19,
                      fret21, fret24]
        
        onPunchTunningLabels = [FSTStringPunchLabel,
                                SCNDStringPunchLabel,
                                THRDStringPunchLabel,
                                FRTHStringPunchLabel,
                                FIFTHStringPunchLabel,
                                SIXTHStringPunchLabel]
        
        CHDataStorage.initChordData()
        chordProperties = CHDataStorage.chordSettings
        
        DispatchQueue.main.async {
            self.textForTunningTextField = self.ElementsBase.TunningFieldText[self.chordProperties.tuning!]
            setTextFieldConfiguration(for: &self.TunningView, withText: self.textForTunningTextField!)
            setTextFieldConfiguration(for: &self.ChordTextField)
        
        }
        
    }
    
    func setTextToTunningfield(withText: String) -> Void {
        TunningView.text = withText
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIDevice.current.setValue(UIInterfaceOrientation.landscapeRight.rawValue, forKey:  "orientation")
    }
    
    
    
    //MARK: - Screen orientation
    
    override open var shouldAutorotate: Bool {
        return false
    }
    
    override open var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeRight
    }
    
    override open var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return .landscapeRight
    }
    
    @IBAction func unwindToFirstScreen(_ segue: UIStoryboardSegue) {
        
        textForTunningTextField = ElementsBase.TunningFieldText[chordProperties.tuning!]
        setTextFieldConfiguration(for: &TunningView, withText: textForTunningTextField!)
        setLablesOfFretsConfiguration(withStyle: chordProperties.fretsStyle!, controller: self)
        setTunningLabelsOnPunchBoard(withTunning: chordProperties.tuning!, controller: self)
        
    }
    
    @IBAction func fretNoteWillPressed(_ sender: UIButton) {
        
        fretNoteHasPressed(sender, onController: self)
        
        
    }

    
}

extension UINavigationController {
    override open var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return topViewController?.supportedInterfaceOrientations ?? .allButUpsideDown
    }
}



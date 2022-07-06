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
}


class CDViewController: UIViewController, MainControllerDelegate {
    
    //MARK: - Elements
    
    //All UIElements on controller
    let ElementsBase = UIElementsOnWelcomeViewControllerStruct()
    
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
    
    
    @IBOutlet var TunningView: UITextField!
    @IBOutlet var ChordTextField: UITextField!
    @IBOutlet var SettingsButton: UIButton!
    @IBOutlet var InfoButton: UIButton!
    
    var textForTunningTextField: String? = nil
    
    var eachFretLabels: [UILabel]? = nil
    var fretLabels: [UILabel]? = nil
    
    //Other options
    var chordProperties: ChordSettings!
    
    //MARK: - Launching...
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        eachFretLabels = [fret1, fret2, fret3, fret4, fret5, fret6, fret7, fret8, fret9, fret10, fret11, fret12,
                 fret13, fret14, fret15, fret16, fret17, fret18, fret19, fret20, fret21, fret22, fret23, fret24]
        fretLabels = [fret1, fret3, fret5, fret7, fret9, fret12, fret15, fret17, fret19, fret21, fret24]
        
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
        
    }

    
}

extension UINavigationController {
    override open var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return topViewController?.supportedInterfaceOrientations ?? .allButUpsideDown
    }
}

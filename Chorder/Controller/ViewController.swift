//
//  ViewController.swift
//  Chorder
//
//  Created by AppleWorm on 22.06.2022.
//

import UIKit
import CoreData

class CDViewController: UIViewController {
    
    //MARK: - Elements
    
    //All UIElements on controller
    let ElementsBase = UIElementsOnWelcomeViewControllerStruct()
    
    @IBOutlet var TunningView: UITextField!
    @IBOutlet var ChordTextField: UITextField!
    @IBOutlet var SettingsButton: UIButton!
    @IBOutlet var InfoButton: UIButton!
    
    var textForTunningTextField: String? = nil
    
    
    //Other options
    var chordProperties: ChordSettings!
    
    //MARK: - Launching...
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    }

    
}

extension UINavigationController {
    override open var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return topViewController?.supportedInterfaceOrientations ?? .allButUpsideDown
    }
}

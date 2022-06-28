//
//  SettingsViewController.swift
//  Chorder
//
//  Created by AppleWorm on 25.06.2022.
//

import UIKit
import CoreData

class SettingsViewController: UIViewController {

    var chordProperties: ChordSettings = CHDataStorage.chordSettings
    
    typealias IndexOfRow = Int
    
    @IBOutlet var tunningPicker: UIPickerView!
    @IBOutlet var guitarPicker: UIPickerView!
    @IBOutlet var fretsPicker: UIPickerView!
    
    @IBOutlet var showNotesTypeLabel: UILabel!
    @IBOutlet var tunningTypeLabel: UILabel!
    @IBOutlet var guitarTypeLabel: UILabel!
    @IBOutlet var FretsTypeLabel: UILabel!
    
    @IBOutlet var notesSwitcher: UISwitch!

    @IBOutlet var settingsBlur: UIVisualEffectView!
    
    var isShowing: Bool? = nil
    var guitarType: String? = nil
    var fretsStyle: String? = nil
    var tunningType: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsBlur.alpha = 1
//        doBlurDisappear() {
//            
//            self.isShowing = !self.chordProperties.hideNotes
//            self.guitarType = self.chordProperties.guitarType
//            self.fretsStyle = self.chordProperties.fretsStyle
//            self.tunningType = self.chordProperties.tuning
//            
//            self.tunningPicker.delegate = self
//            self.tunningPicker.dataSource = self
//            
//            self.fretsPicker.delegate = self
//            self.fretsPicker.dataSource = self
//            
//            self.guitarPicker.delegate = self
//            self.guitarPicker.dataSource = self
//            
//            setLabelTextConfiguration(for: &self.tunningTypeLabel)
//            setLabelTextConfiguration(for: &self.guitarTypeLabel)
//            setLabelTextConfiguration(for: &self.FretsTypeLabel)
//            setLabelTextConfiguration(for: &self.showNotesTypeLabel)
//            
//            self.initSettings()
//            
//        }
        
        self.isShowing = !self.chordProperties.hideNotes
        self.guitarType = self.chordProperties.guitarType
        self.fretsStyle = self.chordProperties.fretsStyle
        self.tunningType = self.chordProperties.tuning
        
        self.tunningPicker.delegate = self
        self.tunningPicker.dataSource = self
        
        self.fretsPicker.delegate = self
        self.fretsPicker.dataSource = self
        
        self.guitarPicker.delegate = self
        self.guitarPicker.dataSource = self
        
        setLabelTextConfiguration(for: &self.tunningTypeLabel)
        setLabelTextConfiguration(for: &self.guitarTypeLabel)
        setLabelTextConfiguration(for: &self.FretsTypeLabel)
        setLabelTextConfiguration(for: &self.showNotesTypeLabel)
        
        self.initSettings()
        
        
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        doBlurDisappear {
//            print("Disappear")
//        }
//    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        doBlurDisappear {
            print("disappear")
        }
    }
    
    private func initSettings() {
        
        tunningPicker.selectRow(obtainCurrentTunning(), inComponent: 0, animated: true)
        fretsPicker.selectRow(obtainCurrentFretsType(), inComponent: 0, animated: true)
        guitarPicker.selectRow(obtainCurrentGuitarType(), inComponent: 0, animated: true)
        notesSwitcher.isOn = !chordProperties.hideNotes
    }
    
    private func obtainCurrentTunning() -> IndexOfRow {
        switch chordProperties.tuning {
        case ChordDataStruct.CDTunning.standartETunning.rawValue:
            return 2
        case ChordDataStruct.CDTunning.openGTunning.rawValue:
            return 0
        case ChordDataStruct.CDTunning.openDTunning.rawValue:
            return 1
        case ChordDataStruct.CDTunning.modalDTunning.rawValue:
            return 3
        default:
            return 4
        }
    }
    
    private func obtainCurrentFretsType() -> IndexOfRow {
        switch chordProperties.fretsStyle {
        case ChordDataStruct.CDFretsStyles.romanNumeralsStyle.rawValue:
            return 0
        case ChordDataStruct.CDFretsStyles.eachFretDefultStyle.rawValue:
            return 1
        case ChordDataStruct.CDFretsStyles.arabicNumeralsStyle.rawValue:
            return 2
        default:
            return 3
        }
    }
    
    private func obtainCurrentGuitarType() -> IndexOfRow {
        switch chordProperties.guitarType {
        case ChordDataStruct.CDGuitarType.lesPaulGuitarType.rawValue:
            return 0
        case ChordDataStruct.CDGuitarType.acousticGuitarType.rawValue:
            return 1
        default:
            return 2
        }
    }
    
    private func resetData() -> Void {
        
        guitarType = ChordDataStruct.CDGuitarType.acousticGuitarType.rawValue
        fretsStyle = ChordDataStruct.CDFretsStyles.romanNumeralsStyle.rawValue
        tunningType = ChordDataStruct.CDTunning.standartETunning.rawValue
        isShowing = false
        
    }
    
        
    @IBAction func setNotesType(_ sender: UISwitch) {
        isShowing = sender.isOn
    }
    
        
    @IBAction func backButton(_ sender: UIButton) {
        CHDataStorage.updateChordData(withGuitarType: guitarType!, fretsStyle: fretsStyle!, tunningType: tunningType!, notesShowingType: isShowing!)
        print("Here i am")
        doBlurAppear() {
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func reloadButton(_ sender: UIButton) {
        resetData()
        CHDataStorage.setDefaults(toData: &chordProperties)
        initSettings()
        
    }
    
    private func doBlurAppear(completion: @escaping () -> ()) -> Void {
        UIView.animate(withDuration: 0.2, delay: 0, options: .curveLinear) {
            self.settingsBlur.alpha = 1
        } completion: { _ in
            completion()
        }
    }
    
    private func doBlurDisappear(completion: @escaping () -> ()) -> Void {
        UIView.animate(withDuration: 0.7, delay: 0, options: .curveLinear) {
            self.settingsBlur.alpha = 0
        } completion: { _ in
            completion()
        }

    }
    
    
}

extension SettingsViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == tunningPicker {
            switch row {
            case 0:
                return "Open G"
            case 1:
                return "Open D"
            case 2:
                return "Standart E"
            case 3:
                return "Modal D"
            default:
                return "Drop D"
            }
        } else if pickerView == fretsPicker {
            switch row {
            case 0:
                return "I V X"
            case 1:
                return "I II III IV V"
            case 2:
                return "1 5 10"
            default:
                return "1 2 3 4 5"
            }
        } else if pickerView == guitarPicker {
            switch row {
            case 0:
                return "Les Paul"
            case 1:
                return "Acoustic"
            default:
                return "Superstrat"
            }
        }
        return "nil"
    }
    

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == guitarPicker {
            switch row {
            case 0:
                guitarType = ChordDataStruct.CDGuitarType.lesPaulGuitarType.rawValue
            case 1:
                guitarType = ChordDataStruct.CDGuitarType.acousticGuitarType.rawValue
            default:
                guitarType = ChordDataStruct.CDGuitarType.superstratGuitarType.rawValue
            }
        } else if pickerView == fretsPicker {
            switch row {
            case 0:
                fretsStyle = ChordDataStruct.CDFretsStyles.romanNumeralsStyle.rawValue
            case 1:
                fretsStyle = ChordDataStruct.CDFretsStyles.eachFretDefultStyle.rawValue
            case 2:
                fretsStyle = ChordDataStruct.CDFretsStyles.arabicNumeralsStyle.rawValue
            default:
                fretsStyle = ChordDataStruct.CDFretsStyles.eachFretArabicNumeralsStyle.rawValue
            }
        } else if pickerView == tunningPicker {
            switch row {
            case 0:
                tunningType = ChordDataStruct.CDTunning.openGTunning.rawValue
            case 1:
                tunningType = ChordDataStruct.CDTunning.openDTunning.rawValue
            case 2:
                tunningType = ChordDataStruct.CDTunning.standartETunning.rawValue
            case 3:
                tunningType = ChordDataStruct.CDTunning.modalDTunning.rawValue
            default:
                tunningType = ChordDataStruct.CDTunning.dropDTunning.rawValue
            }
        }
    }
}

extension SettingsViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if pickerView == tunningPicker {
            return 5
        } else if pickerView == fretsPicker {
            return 4
        } else if pickerView == guitarPicker {
            return 3
        } else {
            return 0
        }
        
    }
    
}




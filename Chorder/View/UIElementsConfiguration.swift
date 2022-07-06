//
//  UIElementsConfiguration.swift
//  Chorder
//
//  Created by AppleWorm on 22.06.2022.
//

import Foundation
import UIKit

let americanTypeWriter: String = "AmericanTypewriter-CondensedBold"

let elementsBase: UIElementsOnWelcomeViewControllerStruct = UIElementsOnWelcomeViewControllerStruct()

func setTextFieldConfiguration(for textField: inout UITextField, withText text: String = "...") -> Void {
    
    textField.isUserInteractionEnabled = false
    textField.font = UIFont(name: americanTypeWriter, size: 20)
    textField.textAlignment = .center
    textField.contentMode = .center
    textField.text = text
    
}


func setTunningButtonConfiguration(for button: inout UIButton) -> Void {
    
    button.tintColor = .black
    button.layer.cornerRadius = 15
    button.clipsToBounds = true
    button.layer.backgroundColor = UIColor.white.cgColor
    button.titleLabel?.textAlignment = .center
    button.titleLabel?.font = UIFont(name: americanTypeWriter, size: 30)
    button.titleLabel?.textColor = .black
    
}


func setLabelTextConfiguration(for label: inout UILabel) -> Void {
    
    label.textColor = .black
    label.font = UIFont(name: americanTypeWriter, size: 30)
    
}


func setLablesOfFretsConfiguration(withStyle style: String, controller: MainControllerDelegate) -> Void {
    resetFretsLabels(onController: controller)
    switch style {
    case ChordDataStruct.CDFretsStyles.arabicNumeralsStyle.rawValue:
        setArabicNumeralStyle(toController: controller)
    case ChordDataStruct.CDFretsStyles.eachFretDefultStyle.rawValue:
        setEachFretRomanNumeralStyle(toController: controller)
    case ChordDataStruct.CDFretsStyles.eachFretArabicNumeralsStyle.rawValue:
        setEachFretArabicNumeralStyle(toController: controller)
    default:
        setRomanNumeralStyle(toController: controller)
    }
}


private func setRomanNumeralStyle(toController controller: MainControllerDelegate) -> Void {
    for i in 0...10 {
        controller.fretLabels?[i].text = elementsBase.fretsDesignations[ChordDataStruct.CDFretsStyles.romanNumeralsStyle.rawValue]![i]
    }
}

private func setArabicNumeralStyle(toController controller: MainControllerDelegate) -> Void {
    for i in 0...10 {
        controller.fretLabels?[i].text = elementsBase.fretsDesignations[ChordDataStruct.CDFretsStyles.arabicNumeralsStyle.rawValue]![i]
    }
}

private func setEachFretArabicNumeralStyle(toController controller: MainControllerDelegate) -> Void {
    for i in 0...23 {
        controller.eachFretLabels?[i].text = elementsBase.fretsDesignations[ChordDataStruct.CDFretsStyles.eachFretArabicNumeralsStyle.rawValue]![i]
    }
}

private func setEachFretRomanNumeralStyle(toController controller: MainControllerDelegate) -> Void {
    for i in 0...23 {
        controller.eachFretLabels?[i].text = elementsBase.fretsDesignations[ChordDataStruct.CDFretsStyles.eachFretDefultStyle.rawValue]![i]
    }
}

private func resetFretsLabels(onController controller: MainControllerDelegate) -> Void {
    controller.eachFretLabels?.forEach({ label in
        label.text = ""
    })
}

//
//  UIElementsConfiguration.swift
//  Chorder
//
//  Created by AppleWorm on 22.06.2022.
//

import Foundation
import UIKit

let americanTypeWriter: String = "GeezaPro-Bold"

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

func setGuitarStan(withStyle style: String, guitar: UIImageView) -> Void {
    switch style {
    case ChordDataStruct.CDGuitarType.lesPaulGuitarType.rawValue:
        guitar.image = UIImage(named: "LesPaulStan")
    case ChordDataStruct.CDGuitarType.superstratGuitarType.rawValue:
        guitar.image = UIImage(named: "SuperstratStan")
    default:
        guitar.image = UIImage(named: "Stan")
    }
}

/* ---------------------------------------------------------------------------------------------------------------------------- */

func setTunningLabelsOnPunchBoard(withTunning tunning: String, controller: MainControllerDelegate) -> Void {
    
    switch tunning {
    case ChordDataStruct.CDTunning.openGTunning.rawValue:
        setOpenGTunningOnPunchBoard(toController: controller)
    case ChordDataStruct.CDTunning.openDTunning.rawValue:
        setOpenDTunningOnPunchBoard(toController: controller)
    case ChordDataStruct.CDTunning.modalDTunning.rawValue:
        setModalDTunningOnPunchBoard(toController: controller)
    case ChordDataStruct.CDTunning.dropDTunning.rawValue:
        setDropDTunningOnPunchBoard(toController: controller)
    default:
        setStandartETunningOnPunchBoard(toController: controller)
    }
    
}

private func setOpenGTunningOnPunchBoard(toController controller: MainControllerDelegate) -> Void {
    for i in 0...5 {
        controller.onPunchTunningLabels?[i].text = elementsBase.onPunchLabelsTunningsDesignations[ChordDataStruct.CDTunning.openGTunning.rawValue]![i]
        controller.onPunchTunningLabels?[i].textAlignment = .center
    }
}

private func setOpenDTunningOnPunchBoard(toController controller: MainControllerDelegate) -> Void {
    for i in 0...5 {
        controller.onPunchTunningLabels?[i].text = elementsBase.onPunchLabelsTunningsDesignations[ChordDataStruct.CDTunning.openDTunning.rawValue]![i]
        controller.onPunchTunningLabels?[i].textAlignment = .center
    }
}

private func setStandartETunningOnPunchBoard(toController controller: MainControllerDelegate) -> Void {
    for i in 0...5 {
        controller.onPunchTunningLabels?[i].text = elementsBase.onPunchLabelsTunningsDesignations[ChordDataStruct.CDTunning.standartETunning.rawValue]![i]
        controller.onPunchTunningLabels?[i].textAlignment = .center
    }
}

private func setModalDTunningOnPunchBoard(toController controller: MainControllerDelegate) -> Void {
    for i in 0...5 {
        controller.onPunchTunningLabels?[i].text = elementsBase.onPunchLabelsTunningsDesignations[ChordDataStruct.CDTunning.modalDTunning.rawValue]![i]
        controller.onPunchTunningLabels?[i].textAlignment = .center
    }
}

private func setDropDTunningOnPunchBoard(toController controller: MainControllerDelegate) -> Void {
    for i in 0...5 {
        controller.onPunchTunningLabels?[i].text = elementsBase.onPunchLabelsTunningsDesignations[ChordDataStruct.CDTunning.dropDTunning.rawValue]![i]
        controller.onPunchTunningLabels?[i].textAlignment = .center
    }
}

/* ---------------------------------------------------------------------------------------------------------------------------- */

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

/* ---------------------------------------------------------------------------------------------------------------------------- */

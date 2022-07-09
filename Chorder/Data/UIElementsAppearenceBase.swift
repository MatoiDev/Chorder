//
//  UIElementsAppearenceBase.swift
//  Chorder
//
//  Created by AppleWorm on 22.06.2022.
//

import Foundation

protocol UIElementsOnWelcomeViewControllerStructProtocol {
    
    var TunningFieldText : [ChordDataStruct.CDTunning.RawValue : String] { get }
    
    var fretsDesignations : [ChordDataStruct.CDFretsStyles.RawValue : [String]] { get }
    var onPunchLabelsTunningsDesignations : [ChordDataStruct.CDTunning.RawValue : [String]] { get }
    
    var noteByTunning : [ChordDataStruct.CDTunning : Int] { get }
    
}


struct UIElementsOnWelcomeViewControllerStruct: UIElementsOnWelcomeViewControllerStructProtocol {
    
    var TunningFieldText : [ChordDataStruct.CDTunning.RawValue : String] = [
        "standartETunning" : "standart E",
        "openGTunning" : "open G",
        "openDTunning" : "open D",
        "modalDTunning" : "modal D",
        "dropDTunning" : "drop D"
    ]
    
    var onPunchLabelsTunningsDesignations: [ChordDataStruct.CDTunning.RawValue : [String]] = [
        
        ChordDataStruct.CDTunning.openGTunning.rawValue : [
            "D", "B", "G", "D", "G", "D"
        ],
        
        ChordDataStruct.CDTunning.openDTunning.rawValue : [
            "d", "A", "F#", "D", "A", "D"
        ],
        
        ChordDataStruct.CDTunning.standartETunning.rawValue : [
            "e", "B", "G", "D", "A", "E"
        ],
        
        ChordDataStruct.CDTunning.modalDTunning.rawValue : [
            "d", "A", "G", "D", "A", "D"
        ],
        
        ChordDataStruct.CDTunning.dropDTunning.rawValue : [
            "E", "B", "G", "D", "A", "D"
        ]
        
    
    ]
    
    var fretsDesignations: [ChordDataStruct.CDFretsStyles.RawValue : [String]] = [
        ChordDataStruct.CDFretsStyles.arabicNumeralsStyle.rawValue : [
                "1", "3", "5", "7",
                "9", "12", "15", "17",
                "19", "21", "24"
        ],
        ChordDataStruct.CDFretsStyles.romanNumeralsStyle.rawValue : [
                "I", "III", "V", "VII",
                "IX", "XII", "XV", "XVII",
                "XIX", "XXI", "XXIV"
        ],
        ChordDataStruct.CDFretsStyles.eachFretDefultStyle.rawValue : [
                "I", "II", "III", "IV", "V", "VI", "VII",
                "VIII", "IX", "X", "XI", "XII", "XIII",
                "XIV", "XV", "XVI", "XVII", "XVIII", "XIX",
                "XX", "XXI", "XXII", "XXIII", "XXIV"
        ],
        
        ChordDataStruct.CDFretsStyles.eachFretArabicNumeralsStyle.rawValue : [
                "1", "2", "3", "4", "5", "6", "7", "8", "9",
                "10", "11", "12", "13", "14", "15", "16", "17",
                "18", "19", "20", "21", "22", "23", "24"
        ]
    ]
    
    var noteByTunning: [ChordDataStruct.CDTunning : Int] = [
        
        .openGTunning : 0,
        .openDTunning : 1,
        .standartETunning : 2,
        .modalDTunning : 3,
        .dropDTunning : 4
        
    ]
    
}




//
//  UIElementsAppearenceBase.swift
//  Chorder
//
//  Created by AppleWorm on 22.06.2022.
//

import Foundation

protocol UIElementsOnWelcomeViewControllerStructProtocol {
    
    var TunningFieldText : [ChordDataStruct.CDTunning : String] { get }
    
}


struct UIElementsOnWelcomeViewControllerStruct {
    
    var TunningFieldText : [ChordDataStruct.CDTunning.RawValue : String] = [
        "standartETunning" : "standart E",
        "openGTunning" : "open G",
        "openDTunning" : "open D",
        "modalDTunning" : "modal D",
        "dropDTunning" : "drop D"
    ]
    
}




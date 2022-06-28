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




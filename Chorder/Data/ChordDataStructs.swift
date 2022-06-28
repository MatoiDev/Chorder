import Foundation

protocol ChordDataStructProtocol {
    
}

struct ChordDataStruct : ChordDataStructProtocol {
    
    enum CDTunning: String {
        
        case standartETunning
        case openGTunning
        case openDTunning
        case modalDTunning
        case dropDTunning
        
    }
    
    enum CDFretsStyles: String {
        
        case romanNumeralsStyle
        case arabicNumeralsStyle
        case eachFretDefultStyle
        case eachFretArabicNumeralsStyle
        
    }
    
    enum CDGuitarType: String {
        
        case acousticGuitarType
        case lesPaulGuitarType
        case superstratGuitarType
        
    }
    
}

import Foundation
import UIKit

let americanTypeWriter: String = "AmericanTypewriter-CondensedBold"

func setTextFieldConfiguration(for textField: inout UITextField, withText text: String = "...") -> Void {
    
    textField.isUserInteractionEnabled = false
    textField.font = UIFont(name: americanTypeWriter, size: 30)
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

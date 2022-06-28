//
//  GuitarPicker.swift
//  Chorder
//
//  Created by Comatose on 25.06.2022.
//

import UIKit

class GuitarPicker: UIPickerView {

}

extension GuitarPicker: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch row {
        case 0:
            return "Les Paul"
        case 1:
            return "Acoustic"
        default:
            return "Superstrat"
        }
    }
}

extension GuitarPicker: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        3
    }
}

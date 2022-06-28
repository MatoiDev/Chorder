//
//  FretsPicker.swift
//  Chorder
//
//  Created by Comatose on 25.06.2022.
//

import UIKit

class FretsPicker: UIPickerView {

}

extension FretsPicker: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
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
    }
}
extension FretsPicker: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        4
    }
}

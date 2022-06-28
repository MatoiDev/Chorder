//
//  TinningPicker.swift
//  Chorder
//
//  Created by Comatose on 25.06.2022.
//

import UIKit

class TunningPicker: UIPickerView {

}

extension TunningPicker: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            switch row {
            case 0:
                return "Open G"
            case 1:
                return "Open D"
            case 2:
                return "standart E"
            case 3:
                return "Model D"
            case 4:
                return "Drop D"
            default:
                return nil
        }
    }
}

extension TunningPicker: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        5
    }
}

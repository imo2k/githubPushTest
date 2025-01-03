//
//  UILabel + Extension.swift
//  week2
//
//  Created by GO on 1/2/25.
//

import UIKit

extension UILabel {
    func setPrimaryLabel(_ text: String) {
        self.textColor = .red
        self.font = .boldSystemFont(ofSize: 20)
        self.textAlignment = .center
        self.text = text
    }
    
    func setLabel(label: UILabel, _ text: String) {
        label.textColor = .red
        label.font = .boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        label.text = text
    }
}

//
//  selectedButtonAnimation.swift
//  Swoosh
//
//  Created by Youssef Bhl on 30/05/2022.
//

import Foundation
import UIKit

struct SelectedButtonAnimation {
    func scaleSelectedButton(selectedButton: BorderButton, otherButtons: [BorderButton]) {
        UIView.animate(withDuration: 0.27, delay: 0, options: .curveEaseIn) {
            selectedButton.transform = CGAffineTransform(scaleX: 1.08, y: 1.08)
        }
        
        otherButtons.forEach { button in
            UIView.animate(withDuration: 0, delay: 0, options: .curveEaseIn) {
                button.transform = CGAffineTransform(scaleX: 1, y: 1)
            }
        }
    }
}

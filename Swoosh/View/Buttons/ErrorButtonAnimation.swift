//
//  errorButtonAnimation.swift
//  Swoosh
//
//  Created by Youssef Bhl on 27/05/2022.
//

import Foundation
import UIKit

struct ErrorButtonAnimation {
    func buttonAnimation(button : UIButton) {
        UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseInOut) {
            button.transform = CGAffineTransform(translationX: 0, y: -2)
        } completion: { _ in
            UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseInOut) {
                button.transform = CGAffineTransform(translationX: 0, y: 4)
            } completion: { _ in
                UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseInOut) {
                    button.transform = CGAffineTransform(translationX: 0, y: -4)
                } completion: { _ in
                    UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseInOut) {
                        button.transform = CGAffineTransform(translationX: 0, y: 4)
                    } completion: { _ in
                        UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseInOut) {
                            button.transform = CGAffineTransform(translationX: 0, y: 2)
                        } completion: { _ in
                            
                        }
                    }
                }
            }
        }
        
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseInOut) {
            button.layer.borderColor = UIColor.red.cgColor
        } completion: { _ in
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseInOut) {
                button.layer.borderColor = UIColor.white.cgColor
            }
        }
    }
}

//
//  GradientView.swift
//  financeapp-treinando
//
//  Created by Usuario on 19/03/23.
//

import Foundation

import UIKit

@IBDesignable
class GradientView: UIView {
    
    @IBInspectable var topColor: UIColor = UIColor.white {
        didSet {
            setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = UIColor.black {
        didSet {
            setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0.9, y: 1)
        gradientLayer.frame = bounds
        layer.insertSublayer(gradientLayer, at: 0)
    }
    
}


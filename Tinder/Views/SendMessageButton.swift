//
//  SendMessageButton.swift
//  Tinder
//
//  Created by Bekzod Rakhmatov on 06/02/2019.
//  Copyright © 2019 BekzodRakhmatov. All rights reserved.
//

import UIKit

class SendMessageButton: UIButton {

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        let gradientLayer = CAGradientLayer()
        let leftColor  = #colorLiteral(red: 0.9897946715, green: 0.1206176206, blue: 0.4514576197, alpha: 1)
        let rightColor = #colorLiteral(red: 0.9874548316, green: 0.3935527802, blue: 0.3240509331, alpha: 1)
        gradientLayer.colors = [leftColor.cgColor, rightColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
        
        self.layer.insertSublayer(gradientLayer, at: 0)
        
        layer.cornerRadius = rect.height / 2
        clipsToBounds = true
        
        gradientLayer.frame = rect
    }
}

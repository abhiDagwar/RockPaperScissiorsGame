//
//  CircularButton.swift
//  Simon Says
//
//  Created by Abhishek Dagwar on 03/06/20.
//  Copyright © 2020 Abhishek Dagwar. All rights reserved.
//

import UIKit

class CircularButton: UIButton {
    
    override func awakeFromNib() {
        layer.cornerRadius = 0.5 * frame.size.width
        layer.masksToBounds = true
    }
    
    override var isHighlighted: Bool {
        didSet {
            if isHighlighted {
                alpha = 1.0
            } else {
                alpha = 0.5
            }
        }
    }
}

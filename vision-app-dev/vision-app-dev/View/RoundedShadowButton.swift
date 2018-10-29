//
//  RoundedShadowButton.swift
//  vision-app-dev
//
//  Created by Stephen Reyes on 10/29/18.
//  Copyright © 2018 Stephen Reyes. All rights reserved.
//

import UIKit

class RoundedShadowButton: UIButton {

    override func awakeFromNib() {
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowRadius = 15
        self.layer.shadowOpacity = 0.75
        self.layer.cornerRadius = self.frame.height / 2
    }

}

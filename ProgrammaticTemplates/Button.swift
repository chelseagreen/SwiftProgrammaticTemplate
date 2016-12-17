//
//  Button.swift
//  ProgrammaticTemplates
//
//  Created by Chelsea Green on 12/16/16.
//  Copyright © 2016 Chelsea Green. All rights reserved.
//

import UIKit

class Button: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        super.backgroundColor = UIColor.black
        super.setTitleColor(UIColor.white, for: UIControlState())
        super.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 15)
        super.contentHorizontalAlignment = .center
        super.layer.cornerRadius = 5
        super.layer.borderWidth = 1
        super.layer.borderColor = UIColor.gray.cgColor
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

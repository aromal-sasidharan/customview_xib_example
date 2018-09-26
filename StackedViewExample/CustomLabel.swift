//
//  CustomLabel.swift
//  StackedViewExample
//
//  Created by Aromal Sasidharan on 9/26/18.
//  Copyright © 2018 Aromal Sasidharan. All rights reserved.
//

import UIKit
import Rswift
class CustomLabel: UILabel {

   
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    override init(frame: CGRect) {
        super.init(frame:frame)
        setupView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    func setupView(){
        textColor = UIColor.red
        self.font = R.font.sfuiDisplayRegular(size: 40)
        self.numberOfLines = 0
    }
}

//
//  PayTransferFromCellTableViewCell.swift
//  StackedViewExample
//
//  Created by Aromal Sasidharan on 9/26/18.
//  Copyright © 2018 Aromal Sasidharan. All rights reserved.
//

import UIKit

class PayTransferFromCellTableViewCell: UITableViewCell {
    override public init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //check that there are no current subviews
        if self.subviews.count == 0 {
            self.setupView()
            
        }
    }
    
    // MARK: - NSCoding
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        //check that there are no current subviews
        if self.subviews.count == 0 {
            self.setupView()
            
        }
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.frame = UIEdgeInsetsInsetRect(contentView.frame, UIEdgeInsetsMake(0, 16, 0, 16))
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    func setupView(){
        backgroundColor = UIColor.cyan
        
    }
}


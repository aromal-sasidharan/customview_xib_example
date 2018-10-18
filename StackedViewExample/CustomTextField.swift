//
//  CustomTextField.swift
//  StackedViewExample
//
//  Created by Aromal Sasidharan on 10/19/18.
//  Copyright © 2018 Aromal Sasidharan. All rights reserved.
//

import Foundation

import Material
import MaterialTextField
import TinyConstraints
class BILable:UILabel{
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        translatesAutoresizingMaskIntoConstraints = false
    }
    var textSize:CGSize?{
        let string:NSString? = self.text as NSString?
        return string?.size(withAttributes: [NSAttributedStringKey.font: self.font])

    }

}

class CustomTextField : TextField{
   
    lazy var leftLabel:BILable = {
        let l = BILable()
        l.text = ""
        return l
    }()
    lazy var placeHolderField:BILable = {
        let l = BILable()
        l.text = "Placeholder"
        return l
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViews()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        placeHolderField.textColor = (isEditing) ? placeholderActiveColor : placeholderNormalColor
        
    }
    func setupViews(){
        translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(leftLabel)
        self.addSubview(placeHolderField)
        leftLabel.top(to: self)
        leftLabel.left(to: self)
        leftLabel.bottom(to: self)
        
        placeHolderField.leading(to: self)
        placeHolderField.trailing(to: self)
        placeHolderField.bottomToTop(of: leftLabel, offset: 10, relation: .equal, priority: .required, isActive: true)
        placeHolderField.textColor = self.placeholderActiveColor
        placeHolderField.font = placeholderLabel.font
        self.height(50)
        
       
        
        
    }
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, UIEdgeInsetsMake(0, (self.leftLabel.textSize?.width ?? 0) + 5, 0, 15))
    }
    
}

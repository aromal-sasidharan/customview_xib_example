//
//  UIViewExtension.swift
//  StackedViewExample
//
//  Created by Aromal Sasidharan on 9/26/18.
//  Copyright © 2018 Aromal Sasidharan. All rights reserved.
//

import Foundation
import UIKit

public extension UIView
{
    static func loadFromXib<T>(withOwner: Any? = nil, options: [AnyHashable : Any]? = nil) -> T where T: UIView
    {
        let bundle = Bundle(for: self)
        let nib = UINib(nibName: "\(self)", bundle: bundle)
        
        guard let view = nib.instantiate(withOwner: withOwner, options: options).first as? T else {
            fatalError("Could not load view from nib file.")
        }
        return view
    }

    static func loadXibtoFixIn(view:UIView, withOwner: Any? = nil, options: [AnyHashable : Any]? = nil){
        
        let bundle = Bundle(for: self)
        let nib = UINib(nibName: "\(self)", bundle: bundle)
        
        guard let firstView:UIView = nib.instantiate(withOwner: withOwner, options: options).first as? UIView else{
            return
        }
        
        firstView.fixInView(view)
    }
    
}
extension UIView
{
    func fixInView(_ container: UIView!) -> Void{
        self.translatesAutoresizingMaskIntoConstraints = false;
        self.frame = container.frame;
        container.addSubview(self);
        NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal, toItem: container, attribute: .leading, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal, toItem: container, attribute: .trailing, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: container, attribute: .top, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: container, attribute: .bottom, multiplier: 1.0, constant: 0).isActive = true
    }
}

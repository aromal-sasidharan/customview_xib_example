//
//  TopStackView.swift
//  StackedViewExample
//
//  Created by Aromal Sasidharan on 9/27/18.
//  Copyright © 2018 Aromal Sasidharan. All rights reserved.
//

import UIKit

class FromStackView: UIStackView {

    @IBOutlet var contentView: UIStackView!
    override init(frame: CGRect) {
        super.init(frame:frame)
        setupView()
    }
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    func setupView(){
        Bundle.main.loadNibNamed(String(describing: FromStackView.self) , owner: self, options: nil)
        contentView.fixInView(self)
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


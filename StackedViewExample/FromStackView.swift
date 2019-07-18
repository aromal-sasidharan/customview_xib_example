//
//  TopStackView.swift
//  StackedViewExample
//
//  Created by Aromal Sasidharan on 9/27/18.
//  Copyright © 2018 Aromal Sasidharan. All rights reserved.
//

import UIKit

class FromStackView: UIView,NibFileLoadable {

   
    @IBOutlet var textField: UITextField!
    @IBOutlet var label: CustomLabel!
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
  
    func setupView(){
     loadNibContent()
        
    }
}

class FromStackViewSub: FromStackView{
    
    override func setupView(){
      super.setupView()
      label.text = "HelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHello"
    }
}

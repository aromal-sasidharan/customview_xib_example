//
//  ViewController.swift
//  StackedViewExample
//
//  Created by Aromal Sasidharan on 9/26/18.
//  Copyright © 2018 Aromal Sasidharan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    let payTransferCell:PayTransferFromCellTableViewCell = PayTransferFromCellTableViewCell.loadFromXib()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return payTransferCell
    }
}

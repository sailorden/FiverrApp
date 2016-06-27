//
//  ViewController.swift
//  FiverrApp
//
//  Created by don't touch me on 6/27/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var primaryView: UIImageView!
    @IBOutlet weak var priLabel: UILabel!
    
    @IBOutlet weak var secLabel: UILabel!
    
    
    var theCategory: Category?
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if let kat = self.theCategory {
            self.priLabel?.text = kat.name
            self.secLabel?.text = kat.fvrDescription
            self.primaryView?.image = UIImage(named: kat.imageName)
            
        }
        
    }
}


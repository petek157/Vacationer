//
//  ViewController.swift
//  Vacationer
//
//  Created by Peter Koruga on 6/17/17.
//  Copyright © 2017 P3 Media. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var expandIconsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Testing Commit")
    }
    override func viewWillAppear(_ animated: Bool) {
        let myColors = AppColors()
        expandIconsButton.backgroundColor = myColors.buttons
        expandIconsButton.layer.cornerRadius = self.expandIconsButton.frame.width/2
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


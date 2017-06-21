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
    
    @IBAction func mapPicker(_ sender: Any) {
        
        UIView.animate(withDuration: 1, animations: {
            
            let butX = Double(self.expandIconsButton.layer.position.x)
            let butY = Double(self.expandIconsButton.layer.position.y)
            let radius = Double(UIScreen.main.bounds.width/2)
            
            let newX = butX + radius * cos(180 * Double.pi / 180)
            let newY = butY + radius * sin(180 * Double.pi / 180)
            
            print("Cos: \(cos(180 * Double.pi / 180))")
            print("butX: \(butX)")
            print("butY: \(butY)")
            print("Rad: \(radius)")
            print("Screen: \(UIScreen.main.bounds.width)")
            print("X: \(newX)")
            print("Y: \(newY)")
            self.expandIconsButton.layer.position.x = CGFloat(newX)
            self.expandIconsButton.layer.position.y = CGFloat(newY)
        }, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Testing Commit")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let myColors = AppColors()
        let screen = UIScreen.main.bounds
        
        expandIconsButton.backgroundColor = myColors.buttons
        expandIconsButton.layer.cornerRadius = self.expandIconsButton.frame.width/2
        let butWidth = expandIconsButton.frame.width
        let butHeight = expandIconsButton.frame.height
        expandIconsButton.layer.position = CGPoint(x: screen.width - butWidth, y: screen.height - butHeight)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  cold call
//
//  Created by elva wang on 10/31/17.
//  Copyright © 2017 elva wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
     let names = ["Elva", "Victor","Erick","Jaug","Amy"]
//
    @IBAction func callButtonPressed(_ sender: UIButton) {
        let idx = Int(arc4random_uniform(UInt32(names.count)))
        nameLabel.text = names[idx]

        if (idx + 1) == 1 || (idx + 1) == 2{
            numberLabel.textColor = UIColor.red
        } else if (idx + 1) == 3 || (idx + 1) == 4 {
            numberLabel.textColor = UIColor.orange
        } else if (idx + 1) == 5 {
            numberLabel.textColor = UIColor.green
        }
        numberLabel.text = "\(idx + 1)"
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Ready ?"
//        numberLabel.text = ""
        numberLabel.text = ""

//        let button = UIButton()
//        button.frame.size = CGSize(width:300,height: 50)
    }

}


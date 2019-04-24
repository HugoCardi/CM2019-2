//
//  ViewController.swift
//  repaso
//
//  Created by Macbook on 4/24/19.
//  Copyright © 2019 UK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SwitchColor: UISwitch!

    
    @IBAction func SwitchAction(_ sender: Any) {
        if SwitchColor.isOn {
            view.backgroundColor = UIColor.init(red: 0.75, green: 0.0, blue: 0.2, alpha: 1.0)
        }else{
            view.backgroundColor = UIColor.init(red: 0.2, green: 0.1, blue: 0.6, alpha: 1.0)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .gray
    }


}


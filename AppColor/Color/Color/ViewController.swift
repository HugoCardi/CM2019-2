//
//  ViewController.swift
//  Color
//
//  Created by Macbook on 3/11/19.
//  Copyright © 2019 Theranos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var SliderRed: UISlider!
    @IBOutlet weak var SliderGreen: UISlider!
    @IBOutlet weak var SliderBlue: UISlider!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
            SliderGreen.isEnabled = false
            SliderRed.isEnabled = false
            SliderBlue.isEnabled = false
        colorView.layer.borderWidth = 3
        colorView.layer.cornerRadius = 20
        colorView.layer.borderColor = UIColor.black.cgColor
        updateColor()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sliderAction(_ sender: Any) {
        updateColor()
    }
    
    @IBAction func switchAction(_ sender: Any) {
        updateColor()
    }
    
    @IBAction func resetButton(_ sender: Any) {
        SliderGreen.value = 0.5
        SliderBlue.value = 0.5
        SliderRed.value = 0.5
        redSwitch.isOn = false
        blueSwitch.isOn = false
        greenSwitch.isOn = false
        updateColor()
        
    }
    func updateColor(){
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if redSwitch.isOn{
            SliderRed.isEnabled = true
            red = CGFloat(SliderRed.value)
        }else{
            SliderRed.isEnabled = false
        }
        if blueSwitch.isOn{
            SliderBlue.isEnabled = true
            blue = CGFloat(SliderBlue.value)
        }else {
            SliderBlue.isEnabled = false
        }
        if greenSwitch.isOn{
            SliderGreen.isEnabled = true
            green = CGFloat(SliderGreen.value)
        }else{
            SliderGreen.isEnabled = false
        }
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
}


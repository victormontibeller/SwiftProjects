//
//  ViewController.swift
//  ColorMix
//
//  Created by iOS Lab on 28/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorSwatch: UIView!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBAction func sliderChanged(_ sender: Any) {
        updateColor()
    }
    
    @IBAction func switchChanged(_ sender: Any) {
        updateColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateColor()
        // Do any additional setup after loading the view.
    }
    
    func updateColor (){
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        if redSwitch.isOn{
            red = CGFloat(redSlider.value)
        }
        if blueSwitch.isOn{
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn{
            blue = CGFloat(blueSlider.value)
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorSwatch.backgroundColor = color
    }
    
}


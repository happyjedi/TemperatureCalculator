//
//  ViewController.swift
//  TempCalc
//
//  Created by HappyJedi on 05.01.16.
//  Copyright © 2016 HappyJedi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var FahrenheitLabel: UILabel!
    @IBOutlet weak var CelsiusLabel: UILabel!
    
    @IBOutlet weak var Slider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func TempChange(sender: AnyObject) {
        
        FahrenheitLabel.text = String(format: "%4.0f Fahrenheit", Slider.value)
        
        let fahrenheit = Slider.value
        let celsius = (fahrenheit - 32) / 1.8
        let result = String(format: "%4.1f Celsius", celsius)
        
        CelsiusLabel.text = result
        
    }


}


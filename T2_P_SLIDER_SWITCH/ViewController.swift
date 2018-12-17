//
//  ViewController.swift
//  T2_P_SLIDER_SWITCH
//
//  Created by 寺先生 on 2018/12/14.
//  Copyright © 2018 wu yuansi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func TestUISwitch(_ sender: UISwitch, forEvent event: UIEvent) {
        let withSwitch = sender
        if withSwitch.isOn  {
            print("Switch is on!")
        }else{
            print("Switch is off!")
        }
    }
    
    @IBAction func TestUISegmented(_ sender: UISegmentedControl, forEvent event: UIEvent) {
        let withSegmentedControl = sender
        switch withSegmentedControl.selectedSegmentIndex {
        case 0:
            print("is 0 !")
        case 1:
            print("is 1 !")
        case 2:
            print("is 2 !")
        default:
            return
        }
    }
   
    @IBOutlet weak var TestUISliderLabel: UILabel!
    @IBAction func TestUISlider(_ sender: UISlider, forEvent event: UIEvent) {
        let withUISlider = sender
        let processAsText = String(withUISlider.value)
        TestUISliderLabel.text  = processAsText
        
    }
}


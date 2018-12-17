//
//  ViewController.swift
//  T2_p_Toolbar
//
//  Created by 寺先生 on 2018/12/17.
//  Copyright © 2018 wu yuansi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TestInfoLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func testAdd(_ sender: Any) {
        self.TestInfoLabel.text = "点击增加"
    }
    
    @IBAction func testSave(_ sender: Any) {
        self.TestInfoLabel.text = "点击保存"
    }
}

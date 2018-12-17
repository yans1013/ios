//
//  ViewController.swift
//  T2_P_NavigationBar
//
//  Created by 寺先生 on 2018/12/17.
//  Copyright © 2018 wu yuansi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var UILabelTitle: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func testSave(_ sender: Any) {
        self.UILabelTitle.title = "Save"
    }
    
    @IBAction func testAdd(_ sender: Any) {
        self.UILabelTitle.title = "Add"
    }
}


//
//  ViewController.swift
//  T2_P_DatePicker
//
//  Created by 寺先生 on 2018/12/17.
//  Copyright © 2018 wu yuansi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TestDatePicker: UIDatePicker!
    @IBOutlet weak var TestLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func selectDate(_ sender: Any) {
        let theDate: Date = self.TestDatePicker.date
        
        //返回本地化日期信息
        let desc = theDate.description(with: NSLocale.current)
        debugPrint(desc)
        
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "YYYY-MM-dd HH:mm:ss"
        self.TestLabel.text = dateFormater.string(from: theDate)
    }
    
}


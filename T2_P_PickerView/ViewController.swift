//
//  ViewController.swift
//  T2_P_PickerView
//
//  Created by 寺先生 on 2018/12/17.
//  Copyright © 2018 wu yuansi. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    @IBOutlet weak var TestPickerView: UIPickerView!
    @IBOutlet weak var TestLabel: UILabel!

    
    var pickerData: NSDictionary!
    var pickerProvincesData: NSArray!
    var pickerCitiesData: NSArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //加载plist数据到pickerView
        let plistPath = Bundle.main.path(forResource: "province_city", ofType: "plist")
        
        let dict = NSDictionary(contentsOfFile: plistPath!)
        self.pickerData = dict
        
        //省份名数据
        self.pickerProvincesData = self.pickerData.allKeys as NSArray
        
        //默认取出第一个省的所有城市数据
        let selectedProvince = self.pickerProvincesData[0] as! String
        self.pickerCitiesData = (self.pickerData[selectedProvince] as! NSArray)
        
//        self.TestPickerView.delegate = self
//        self.TestPickerView.dataSource = self
    
        
    }
    //MARK: -- UIPickerViewSoucre 选择器波轮的数目
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return pickerData.count
    }
    
    //MARK: -- UIPickerViewSoucre 选择器某个波轮的数据行数
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return self.pickerProvincesData.count
        }else{
            return self.pickerCitiesData.count
        }
    }
    
    //MARK: -- UIPickerViewDelegate 为选择器中某个波轮的行提供显示数据
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return self.pickerProvincesData[row] as? String
        }else{
            return self.pickerCitiesData[row] as? String
        }
    }
    
     //MARK: -- UIPickerViewDelegate 选中选择器的某个行时被调用
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0{
            let selectedProvince = self.pickerProvincesData[row] as? String
            self.pickerCitiesData = self.pickerData[selectedProvince!] as? NSArray
            self.TestPickerView.reloadComponent(1)
        }
    }
    

    @IBAction func selectData(_ sender: Any) {
        let row1 = self.TestPickerView.selectedRow(inComponent: 0)
        let row2 = self.TestPickerView.selectedRow(inComponent: 1)
        let selected1 = self.pickerProvincesData[row1] as! String
        let selected2 = self.pickerCitiesData[row2] as! String
//        let title = String(format: "%s,%s",selected1,selected2)
        let title = "\(selected1)-\(selected2)"
        self.TestLabel.text = title
        
       
    }
}


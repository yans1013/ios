//
//  ViewController.swift
//  T2_P_AlertView
//
//  Created by 寺先生 on 2018/12/17.
//  Copyright © 2018 wu yuansi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let screen = UIScreen.main.bounds
        let buttonAlertView = UIButton(type: UIButton.ButtonType.system)
        buttonAlertView.setTitle("Test警告框", for: UIControl.State.normal)
        
        let buttonAlertViewWidth: CGFloat = 100
        let buttonAlertViewHeitgh: CGFloat = 30
        let buttonAlertViewTopView: CGFloat = 130
        
        buttonAlertView.frame = CGRect(x: (screen.size.width-buttonAlertViewWidth)/2, y: buttonAlertViewTopView, width: buttonAlertViewWidth, height: buttonAlertViewHeitgh)
        
        //指定事件处理方法
        buttonAlertView.addTarget(self, action: #selector(testAlertView), for: UIControl.Event.touchUpInside)
        self.view.addSubview(buttonAlertView)
    }
    
    @objc func testAlertView(sender: AnyObject){
        let alertController: UIAlertController = UIAlertController(title: "警告", message: "警告内容在这呢！", preferredStyle: UIAlertController.Style.alert)
        
        let noAction = UIAlertAction(title: "取消", style: UIAlertAction.Style.default) { (UIAlertAction) in
//            NSLog("%s", "点击取消")
            print("点击取消")
        }
        
        let yesAction = UIAlertAction(title: "确定", style: UIAlertAction.Style.default) { (UIAlertAction) in
//            NSLog("%s", "点击确定")
            print("点击确定")
        }
        
        alertController.addAction(noAction)
        alertController.addAction(yesAction)
        
        self.present(alertController, animated: true, completion: nil)
    
        
    }


}


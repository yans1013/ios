//
//  ViewController.swift
//  T2_P_ActionSheet
//
//  Created by 寺先生 on 2018/12/17.
//  Copyright © 2018 wu yuansi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override fun/Users/wuyuansi/Desktop/swift/T2_P/T2_P_ActivityIndicatorView/ViewController.swiftc viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let screen = UIScreen.main.bounds
        let buttonActionSheet = UIButton(type: UIButton.ButtonType.system)
        buttonActionSheet.setTitle("Test操作表", for: UIControl.State.normal)
        
        let buttonActionSheetWidth: CGFloat = 100
        let buttonActionSheetHeitgh: CGFloat = 30
        let buttonActionSheetTopView: CGFloat = 260
        
        buttonActionSheet.frame = CGRect(x: (screen.size.width-buttonActionSheetWidth)/2, y: buttonActionSheetTopView, width: buttonActionSheetWidth, height: buttonActionSheetHeitgh)
        
        //指定事件处理方法
        buttonActionSheet.addTarget(self, action: #selector(testActionSheet), for: UIControl.Event.touchUpInside)
        self.view.addSubview(buttonActionSheet)
    }
    
    @objc func testActionSheet(sender: AnyObject){
        let actionSheetController: UIAlertController = UIAlertController(title: "操作表", message: "操作表内容在这呢！", preferredStyle: UIAlertController.Style.actionSheet)
        
        let cancelAction = UIAlertAction(title: "取消", style: UIAlertAction.Style.cancel) { (UIAlertAction) in
            //            NSLog("%s", "点击取消")
            print("点击取消")
        }
        
        let destructiveAction = UIAlertAction(title: "破坏性按钮", style: UIAlertAction.Style.destructive) { (UIAlertAction) in
            //            NSLog("%s", "点击确定")
            print("点击破坏性按钮")
        }
        
        let otherAction = UIAlertAction(title: "其他按钮", style: UIAlertAction.Style.default) { (UIAlertAction) in
            //            NSLog("%s", "点击确定")
            print("点击其他按钮")
        }
        
        actionSheetController.addAction(cancelAction)
        actionSheetController.addAction(destructiveAction)
        actionSheetController.addAction(otherAction)
        
        self.present(actionSheetController, animated: true, completion: nil)
    }


}


//
//  ViewController.swift
//  T2_P_WKWebview
//
//  Created by 寺先生 on 2018/12/14.
//  Copyright © 2018 wu yuansi. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate,WKNavigationDelegate {

    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let screen = UIScreen.main.bounds
        let webConfiguration = WKWebViewConfiguration()
       
        //按钮栏
        let buttonBarWidth: CGFloat = 316
        let buttonBar = UIView(frame: CGRect(x: (screen.size.width - buttonBarWidth)/2, y: 20, width: buttonBarWidth, height: 30))
        self.view.addSubview(buttonBar)
        
        //1.添加loadHTMLString按钮
        let buttonLoadHTMLString = UIButton(type: UIButton.ButtonType.system)
        buttonLoadHTMLString.setTitle("LoadHTMLString", for: UIControl.State.normal)
        buttonLoadHTMLString.frame = CGRect(x: 0, y: 0, width: 117, height: 30)
        
        //指定事件处理方法
        buttonLoadHTMLString.addTarget(self, action:Selector(testLoadHTMLString), for: UIControl.Event.touchUpInside)
        
        buttonBar.addSubview(buttonLoadHTMLString)
        
        self.webView = WKWebView(frame: CGRect(x: 0, y: 60, width: screen.size.width, height: screen.size.height - 80), configuration:  webConfiguration)
        
        
        self.view.addSubview(webView)

    }
    
    func testLoadHTMLString(sender: Any){
        print("haha")
    }
}

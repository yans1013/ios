//
//  ViewController.swift
//  T2_P_ActivityIndicatorView
//
//  Created by 寺先生 on 2018/12/17.
//  Copyright © 2018 wu yuansi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TestActivityIndicatorView: UIActivityIndicatorView!
    @IBOutlet weak var TestProgressView: UIProgressView!
    private var downloadTimer : Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func uploadStart(_ sender: UIButton) {
        if self.TestActivityIndicatorView.isAnimating{
            self.TestActivityIndicatorView.stopAnimating()
        }else{
            self.TestActivityIndicatorView.startAnimating()
        }
    }
    
    @IBAction func downloadStart(_ sender: UIButton) {
        self.downloadTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(download), userInfo: nil, repeats: true)
    }
    
    @objc func download(){
        self.TestProgressView.progress = self.TestProgressView.progress + 0.1
        if self.TestProgressView.progress == 1.0 {
            let alertController = UIAlertController(title: "提示", message: "下载完成！", preferredStyle: UIAlertController.Style.alert)
            let okAction = UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil)
            alertController.addAction(okAction)
            
            //show alertController
            self.present(alertController, animated: true, completion: nil)
            self.downloadTimer.invalidate()
           
        }
       
        
    }
}


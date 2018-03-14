//
//  ViewController.swift
//  webView缓存
//
//  Created by liyingnan on 2018/3/13.
//  Copyright © 2018年 liyingnan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var webview: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func handleGo(_ sender: Any) {
        if self.textfield.isFirstResponder {
            self.textfield.resignFirstResponder()
        }
        self.req()
    }
    
    func req() {
        if let text = self.textfield.text {
            let url = URL(string:text)
            let request = URLRequest(url:url!)
            self.webview.loadRequest(request)
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


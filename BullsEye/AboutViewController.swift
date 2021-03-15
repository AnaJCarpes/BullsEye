//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Ana Jensen on 10/02/21.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let htmlPath = Bundle.main.path(forResource: "BullsEye", ofType: "html") {
            let url = URL(fileURLWithPath: htmlPath)
            let request = URLRequest(url: url)
            if webView != nil {
                webView?.backgroundColor = .clear
                webView?.load(request)
            }
                
    
            
        }

    }
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }

}

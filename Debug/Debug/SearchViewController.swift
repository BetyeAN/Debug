//
//  SearchViewController.swift
//  Debug
//
//  Created by Betye on 6/26/18.
//  Copyright © 2018 JBZ Apps. All rights reserved.
//

import UIKit
import WebKit

class SearchViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var forwardButton: UIButton!
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        webView.navigationDelegate = self
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let searchEngine:URL = URL(string: "https://www.google.com")!
        let searchEngineRequest:URLRequest = URLRequest(url:searchEngine)
        
        webView.load(searchEngineRequest)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goBack(_ sender: Any) {
        if webView.canGoBack{
            webView.goBack()
        }
    }
    
    @IBAction func goForward(_ sender: Any) {
        if webView.canGoForward{
        webView.goForward()
        }
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        backButton.isEnabled = webView.canGoBack
        forwardButton.isEnabled = webView.canGoForward
    }

}

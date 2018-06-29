//
//  FourthPageController.swift
//  Debug
//
//  Created by Betye on 6/26/18.
//  Copyright © 2018 JBZ Apps. All rights reserved.
//

import UIKit

class FourthPageController: UIViewController {
 @IBOutlet weak var textView1: UITextView!
 @IBOutlet weak var textView2: UITextView!
 @IBOutlet weak var ImageView: UIImageView!
    
    
    var choice2: Choice2!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard choice2 != nil else { return }
        
        textView1.text = choice2.text
        textView2.text = choice2.textTwo
        ImageView.image = choice2.image
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

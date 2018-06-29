//
//  SecondPageController.swift
//  Debug
//
//  Created by Betye on 6/26/18.
//  Copyright © 2018 JBZ Apps. All rights reserved.
//

import UIKit

class SecondPageController: UIViewController {
    @IBOutlet weak var ButtonOne: UIButton!
    @IBOutlet weak var ButtonTwo: UIButton!
    @IBOutlet weak var ButtonThree: UIButton!
    @IBOutlet weak var ButtonFour: UIButton!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ButtonOne.layer.borderWidth = 2
        ButtonOne.layer.borderColor = UIColor.black.cgColor
        ButtonOne.layer.cornerRadius = 15
        
        ButtonTwo.layer.borderWidth = 2
        ButtonTwo.layer.borderColor = UIColor.black.cgColor
        ButtonTwo.layer.cornerRadius = 15
        
        ButtonThree.layer.borderWidth = 2
        ButtonThree.layer.borderColor = UIColor.black.cgColor
        ButtonThree.layer.cornerRadius = 15
        
        ButtonFour.layer.borderWidth = 2
        ButtonFour.layer.borderColor = UIColor.black.cgColor
        ButtonFour.layer.cornerRadius = 15
      
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var selectedChoice : Choice!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "Segue1"{
            let controller = segue.destination as! ThirdPageController
            controller.choice = selectedChoice
        }
    }
    @IBAction func ButtonOne(_sender:UIButton){
        selectedChoice = Choice(text: "Which statement is closest to your view concerning abortion rights?" ,buttons: ["Pro-Choice", "Need to learn more", "Pro-Life"], title: "Abortion Law")
        performSegue(withIdentifier: "Segue1", sender : self)
        }
    @IBAction func ButtonTwo(_sender:UIButton){
        selectedChoice = Choice(text: "Which statement is closest to your view concerning climate change", buttons: ["I belive it exist", "I need to know more", "It's a conspiracy"], title: "Climate Change")
        performSegue(withIdentifier: "Segue1", sender : self)
    }
    @IBAction func ButtonThree(_sender:UIButton){
        selectedChoice = Choice(text: "Which statement is closest to your view concerning gender?", buttons: ["Gender is biological", "Need to learn more", "Gender is a social construct"], title: "Gender")
            performSegue(withIdentifier: "Segue1", sender : self)
    }
    @IBAction func ButtonFour(_sender:UIButton){
        selectedChoice = Choice(text: "Which statement is closest to your view concerning microaggressions?", buttons: ["Microaggressions are an overreaction", "Need to learn more", "Microaggressions are not an overreaction"], title: "Microaggressions")
                performSegue(withIdentifier: "Segue1", sender : self)
            }
        }


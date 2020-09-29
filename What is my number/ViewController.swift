//
//  ViewController.swift
//  What is my number
//
//  Created by admin on 23/01/2020.
//  Copyright © 2020 AM Kirsch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberField: UITextField!

    @IBAction func save(_ sender: Any) {
        UserDefaults.standard.set(numberField.text, forKey: "number")
        print("save pressed, numberField = ", numberField)
    }

    override func viewDidLoad() {
        print ("viewDidLoad() numberObject = ", UserDefaults.standard.object(forKey:"number")!)
        
        let numberObject = UserDefaults.standard.object(forKey:"number")
        
        print ("numberObject = " , numberObject!)

        
        if let number = numberObject as? String {
            numberField.text = number
        }
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    


}


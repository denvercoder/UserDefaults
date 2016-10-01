//
//  ViewController.swift
//  UserDefaultsLesson
//
//  Created by Timothy Myers on 9/30/16.
//  Copyright © 2016 Denver Coder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let phoneNumberObject = UserDefaults.standard.object(forKey: "phone")
        
        if let phoneNumber = phoneNumberObject as? String {
            phoneNumberField.text = phoneNumber
            print(phoneNumberField.text)
            print(phoneNumber)
        }
        
        
    }
    @IBOutlet weak var phoneNumberField: UITextField!
    
    
    @IBAction func saveNumberDidClick(_ sender: AnyObject) {
        UserDefaults.standard.set(phoneNumberField.text, forKey: "phone")
        print("phone number after save: \(phoneNumberField.text)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


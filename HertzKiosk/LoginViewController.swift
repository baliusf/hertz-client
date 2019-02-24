//
//  LoginViewController.swift
//  HertzKiosk
//
//  Created by Haley Ovenhouse on 2/8/19.
//  Copyright © 2019 Haley Ovenhouse. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var lastNameView: UIView!
    @IBOutlet weak var memberNumberView: UIView!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var memberNumberTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //create border and set color for textfields
        self.lastNameView.layer.borderColor = UIColor(red: (230/255.0), green: (231/255.0), blue: (235/255.0), alpha: 1.0).cgColor
        self.lastNameView.layer.borderWidth = 1
        self.memberNumberView.layer.borderColor = UIColor(red: (230/255.0), green: (231/255.0), blue: (235/255.0), alpha: 1.0).cgColor
        self.memberNumberView.layer.borderWidth = 1
    }
    
    //function executes when the login button is pressed
    @IBAction func loginButton_TouchUpInside(_ sender: Any) {
        
        //perform segue to the home view of the application.
        self.performSegue(withIdentifier: "homeSeg", sender: nil)
    }
    
    
}

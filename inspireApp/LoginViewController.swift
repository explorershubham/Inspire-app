//
//  LoginViewController.swift
//  inspireApp
//
//  Created by shubham suresh agrawal on 05/12/18.
//  Copyright © 2018 shubham suresh agrawal. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passText: UITextField!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButton(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailText.text!, password: passText.text!) { user, error in
            if error == nil && user != nil {
                self.dismiss(animated: false, completion: nil)
                print("Successful")
                let regView = self.storyboard?.instantiateViewController(withIdentifier: "welcome") as? VideoViewController
                self.navigationController?.pushViewController(regView!, animated: true)
                
            } else {
                print("Error logging in: \(error!.localizedDescription)")
            }
        }
}
}

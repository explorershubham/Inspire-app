//
//  singhUpViewController.swift
//  inspireApp
//
//  Created by shubham suresh agrawal on 12/12/18.
//  Copyright © 2018 shubham suresh agrawal. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class singhUpViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    let Array = ["A","B","C"]
    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var textPicker: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var empId: UITextField!
    @IBOutlet weak var passText: UITextField!
    @IBOutlet weak var confirmPass: UITextField!
    @IBAction func tapGesture(_ sender: UITapGestureRecognizer) {
    }
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let thePicker = UIPickerView()
        thePicker.dataSource = self
        thePicker.delegate = self
        textPicker.inputView = thePicker
        
       
        // Do any additional setup after loading the view.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView( _ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Array.count
    }
    
    func pickerView( _ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Array[row]
    }
    
    func pickerView( _ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textPicker.text = Array[row]
    }
    
    
    @IBAction func signUpButton(_ sender: Any) {
        
    }
    
    


}

//
//  registerVC.swift
//  Giants Task
//
//  Created by A.Rahman on 12/6/18.
//  Copyright © 2018 per. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class registerVC: UIViewController {
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var confirmPassTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func createAccPressed(_ sender: Any) {
        
    guard let name=nameTF.text,!name.isEmpty,
    let email=emailTF.text,!email.isEmpty,
    let password=passwordTF.text,!password.isEmpty,
    let confirmPassword=confirmPassTF.text,!confirmPassword.isEmpty else{return}
    guard password==confirmPassword else {return}
        API.register(name: name, email: email, password: password, confirmPassword: confirmPassword) { (error, success:Bool) in
            if success{
                print("SEC HIII")
            }else{
                print ("SEC OOPS")
            }
        }
    }
    
    //to move from VC to another 
    @IBAction func loginButton(_ sender: Any) {
       let vc = self.storyboard?.instantiateViewController(withIdentifier: "login")as! loginVC
        self.present(vc,animated: true)

    }
    


}

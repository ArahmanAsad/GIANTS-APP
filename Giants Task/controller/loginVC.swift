//
//  ViewController.swift
//  Giants Task
//
//  Created by A.Rahman on 12/6/18.
//  Copyright © 2018 per. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class loginVC: UIViewController {
    @IBOutlet weak var EmailTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func loginButton(_ sender: UIButton) {
    guard let email=EmailTF.text,!email.isEmpty else {return}
    guard let password=passwordTF.text,!password.isEmpty else{return}
    
        API.login(email: email, password: password) { (error,success:Bool) in
            if success{
                print("HIIIIII")
            }else{
                print ("OOPS")
            }
            }
      
        
    }
    //to move from VC to another
    @IBAction func createAccountBu(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "register")as! registerVC
        self.present(vc,animated: true)

    }
    

}


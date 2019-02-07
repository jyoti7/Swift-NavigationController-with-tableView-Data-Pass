//
//  SignInViewController.swift
//  navigationWithTableView
//
//  Created by Md. Abdur Rahman Jyoti on 7/2/19.
//  Copyright © 2019 Md. Abdur Rahman Jyoti. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var emailTxtField: UITextField!
    
    @IBOutlet weak var pwTxtField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if UserDefaults.standard.bool(forKey: "ISUSERLOGGEDIN") {
            
            let userDetailsVC = self.storyboard?.instantiateViewController(withIdentifier: "TableViewController") as! TableViewController
            self.navigationController?.pushViewController(userDetailsVC, animated: false)
        }
    }
    

   
    @IBAction func userDetailsNaviClick(_ sender: UIButton) {
      
        if emailTxtField.text == "aapbd@bd.com" && pwTxtField.text == "1234" {
            
            UserDefaults.standard.set(true, forKey: "ISUSERLOGGEDIN")
            let userDetailsVC = self.storyboard?.instantiateViewController(withIdentifier: "TableViewController") as! TableViewController
            self.navigationController?.pushViewController(userDetailsVC, animated: true)
              userDetailsVC.emailPassed = emailTxtField.text
            userDetailsVC.pwPassed = pwTxtField.text
        }else{
            showToast(controller: self, message : "", seconds: 2.0)
            print("Logging not Possible")
            
        }
       
    
        
        
    }
    
    func showToast(controller: UIViewController, message : String, seconds: Double) {
        let alert = UIAlertController(title: "Logging Failed\n Use Correct mail/PW", message: message, preferredStyle: .alert)
        alert.view.backgroundColor = UIColor.black
        alert.view.alpha = 0.6
        alert.view.layer.cornerRadius = 15
        
        controller.present(alert, animated: true)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + seconds) {
            alert.dismiss(animated: true)
        }
    }
    
    
}

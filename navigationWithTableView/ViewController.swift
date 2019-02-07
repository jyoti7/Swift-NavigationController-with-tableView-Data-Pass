//
//  ViewController.swift
//  navigationWithTableView
//
//  Created by Md. Abdur Rahman Jyoti on 7/2/19.
//  Copyright © 2019 Md. Abdur Rahman Jyoti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func clickToSignVC(_ sender: UIButton) {
        let signVC = self.storyboard?.instantiateViewController(withIdentifier: "SignInViewController") as! SignInViewController
        self.navigationController?.pushViewController(signVC, animated: true)
        
        
    }
    
    @IBAction func clickTosignUpVC(_ sender: Any) {
        
        let signUpVC = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        self.navigationController?.pushViewController(signUpVC, animated: true)
        
    }
    
}


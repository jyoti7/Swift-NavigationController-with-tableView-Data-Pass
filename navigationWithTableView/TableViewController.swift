//
//  TableViewController.swift
//  navigationWithTableView
//
//  Created by Md. Abdur Rahman Jyoti on 7/2/19.
//  Copyright © 2019 Md. Abdur Rahman Jyoti. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    
    @IBOutlet weak var showEmailPwlabel: UILabel!
    @IBOutlet weak var showpasslabel: UILabel!
    var emailPassed:String!
    var pwPassed:String!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        showEmailPwlabel.text = emailPassed
        showpasslabel.text = pwPassed
    }
    @IBAction func logOutBtn(_ sender: UIButton) {
        UserDefaults.standard.set(false, forKey: "ISUSERLOGGEDIN")
        self.navigationController?.popToRootViewController(animated: true)
        
    }
}

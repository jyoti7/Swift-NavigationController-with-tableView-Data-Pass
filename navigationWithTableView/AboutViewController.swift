//
//  AboutViewController.swift
//  navigationWithTableView
//
//  Created by Md. Abdur Rahman Jyoti on 10/2/19.
//  Copyright © 2019 Md. Abdur Rahman Jyoti. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet weak var aboutLabel: UILabel!
    
    @IBOutlet weak var aboutImg: UIImageView!
    
    
    var strAboutImg = UIImage()
    var strAboutDetails = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        aboutImg.image = strAboutImg
        aboutLabel.text = strAboutDetails
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

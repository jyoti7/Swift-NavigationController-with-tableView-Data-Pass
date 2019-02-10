//
//  DetailsViewController.swift
//  navigationWithTableView
//
//  Created by Md. Abdur Rahman Jyoti on 10/2/19.
//  Copyright © 2019 Md. Abdur Rahman Jyoti. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var detailsTitle: UILabel!
    
    
    @IBOutlet weak var detailsImg: UIImageView!
   
    
    var strTitle = String()
   var strDetails = String()
    var strImg = UIImage()
    
    
    
    
    @IBAction func imageSwipeDown(_ sender: UISwipeGestureRecognizer) {
        
        print("image down")
        let aboutVC = self.storyboard?.instantiateViewController(withIdentifier: "AboutViewController") as! AboutViewController
        
        aboutVC.strAboutImg = detailsImg.image!
        aboutVC.strAboutDetails = strDetails
        
        self.navigationController?.pushViewController(aboutVC, animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

       
        detailsTitle.text = strTitle
        
        detailsImg.image = strImg
        
    }
    

}

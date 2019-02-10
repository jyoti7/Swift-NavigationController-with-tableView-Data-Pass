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
    
    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var detailsImg: UIImageView!
   
    
    var strTitle = String()
    var strDetails = String()
    var strImg = UIImage()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        detailsTitle.text = strTitle
        detailsLabel.text = strDetails
        detailsImg.image = strImg
        
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

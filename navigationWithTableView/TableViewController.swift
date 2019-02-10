//
//  TableViewController.swift
//  navigationWithTableView
//
//  Created by Md. Abdur Rahman Jyoti on 7/2/19.
//  Copyright © 2019 Md. Abdur Rahman Jyoti. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var showEmailPwlabel: UILabel!
    @IBOutlet weak var showpasslabel: UILabel!
    var emailPassed:String!
    var pwPassed:String!
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    var arrayTitle = ["BD","BR","FR","GB","GR","IN","MY","PK","SA","SN","TH","US"]
    var arrayDetails = ["Bangladesh","Brazil","France","Britain","Greece","India","Malaysia","Pakistan","Saudia Arabia","Senegal","Thailand","United State"]
    var arrayImg = [#imageLiteral(resourceName: "BD"),#imageLiteral(resourceName: "BR"),#imageLiteral(resourceName: "FR"),#imageLiteral(resourceName: "GB"),#imageLiteral(resourceName: "GR"),#imageLiteral(resourceName: "IN"),#imageLiteral(resourceName: "MY"),#imageLiteral(resourceName: "PK"),#imageLiteral(resourceName: "SA"),#imageLiteral(resourceName: "SN"),#imageLiteral(resourceName: "TH"),#imageLiteral(resourceName: "US")]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        showEmailPwlabel.text =  emailPassed
        showpasslabel.text = pwPassed
    }
    @IBAction func logOutBtn(_ sender: UIButton) {
        UserDefaults.standard.set(false, forKey: "ISUSERLOGGEDIN")
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 135
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayTitle.count
    }
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 2
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "CELL") as! TableViewCell
        cell.titleLabel.text = self.arrayTitle[indexPath.row]
        cell.detailsLabel.text = self.arrayDetails[indexPath.row]
        cell.imgView.image = self.arrayImg[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let DetailsVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        
        DetailsVC.strTitle = self.arrayTitle[indexPath.row]
        DetailsVC.strDetails = self.arrayDetails[indexPath.row]
        DetailsVC.strImg = self.arrayImg[indexPath.row]
        self.navigationController?.pushViewController(DetailsVC, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            arrayTitle.remove(at: indexPath.row)
            arrayDetails.remove(at: indexPath.row)
            arrayImg.remove(at: indexPath.row)
            tableViewOutlet.deleteRows(at: [indexPath], with: .fade)
        }
    }
}

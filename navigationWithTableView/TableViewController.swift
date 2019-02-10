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
    var arrayDetails = ["Bangladesh is a middle power and a developing nation. Listed as one of the Next Eleven, its economy ranks 43rd in terms of nominal gross domestic product and 29th in terms of purchasing power parity. It is one of the largest textile exporters in the world. Its major trading partners are the European Union, the United States, China, India, Japan, Malaysia and Singapore.","Brazil (Portuguese: Brasil Portuguese pronunciation: [bɾaˈziw]),[nt 1] officially the Federative Republic of Brazil (Portuguese: República Federativa do Brasil, About this soundlisten (help·info)),[9] is the largest country in both South America and Latin America. At 8.5 million square kilometers (3.2 million square miles)[10] and with over 208 million people, Brazil is the world's fifth-largest country by area and the fifth most populous.", "France (French: [fʁɑ̃s]), officially the French Republic (French: République française, pronounced [ʁepyblik fʁɑ̃sɛːz]), is a country whose territory consists of metropolitan France in Western Europe and several overseas regions and territories.[XIII] The metropolitan area of France extends from the Mediterranean Sea to the English Channel and the North Sea, and from the Rhine to the Atlantic Ocean. It is bordered by Belgium, Luxembourg and Germany to the northeast, Switzerland and Italy to the east, and Andorra and Spain to the south.", "The United Kingdom, officially the United Kingdom of Great Britain and Northern Ireland but more commonly known as the UK[14] or Britain,[note 10] is a sovereign country lying off the north-western coast of the European mainland. The United Kingdom includes the island of Great Britain, the north-eastern part of the island of Ireland and many smaller islands.[15] Northern Ireland is the only part of the United Kingdom that shares a land border with another sovereign state‍—‌the Republic of Ireland.","La Grèce, en forme longue la République hellénique, (en grec : Ελλάδα / Elláda ou officiellement Ελληνική Δημοκρατία / Ellinikí Dimokratía, en grec ancien et en katharévousa Ἑλλάς / Hellás) est un pays d’Europe du Sud et membre de l'Union européenne, situé dans l'extrême Sud des Balkans. Sa capitale et sa plus grande ville est Athènes.", "India (IAST: Bhārat), also known as the Republic of India (IAST: Bhārat Gaṇarājya),[18][e] is a country in South Asia. It is the seventh largest country by area and with more than 1.3 billion people, it is the second most populous country and the most populous democracy in the world. Bounded by the Indian Ocean on the south, the Arabian Sea on the southwest, and the Bay of Bengal on the southeast, it shares land borders with Pakistan to the west;[f] China, Nepal, and Bhutan to the northeast; and Bangladesh and Myanmar to the east. In the Indian Ocean, India is in the vicinity of Sri Lanka and the Maldives, while its Andaman and Nicobar Islands share a maritime border with Thailand and Indonesia.", "Malaysia has its origins in the Malay kingdoms which, from the 18th century, became subject to the British Empire when the Straits Settlements became British protectorates. Peninsular Malaysia was unified as the Malayan Union in 1946. Malaya was restructured as the Federation of Malaya in 1948, and achieved independence on 31 August 1957. Malaya united with North Borneo, Sarawak, and Singapore on 16 September 1963 to become Malaysia. In 1965, Singapore was expelled from the federation.[13] The country is multi-ethnic and multi-cultural, which plays a large role in its politics. About half the population is ethnically Malay, with large minorities of Malaysian Chinese (the second largest community of Overseas Chinese in the world), Malaysian Indians, and indigenous peoples. The constitution grants freedom of religion but recognises Islam as the established religion of the state.", "Pakistan[b] (Urdu: پاکِستان‬‎), officially the Islamic Republic of Pakistan (Urdu: اِسلامی جمہوریہ پاکِستان‬‎), is a country in South Asia. It is the world’s sixth-most populous country with a population exceeding 212,742,631 people.[19] In area, it is the 33rd-largest country, spanning 881,913 square kilometres (340,509 square miles). Pakistan has a 1,046-kilometre (650-mile) coastline along the Arabian Sea and Gulf of Oman in the south and is bordered by India to the east, Afghanistan to the west, Iran to the southwest, and China in the far northeast. It is separated narrowly from Tajikistan by Afghanistan's Wakhan Corridor in the northwest, and also shares a maritime border with Oman.","Saudi Arabia (/ˌsɔːdi əˈreɪbiə/ (About this soundlisten), /ˌsaʊ-/ (About this soundlisten); Arabic: السعودية‎ as-Saʿūdīyah), officially the Kingdom of Saudi Arabia (KSA; Arabic: المملكة العربية السعودية‎ al-Mamlakah ʿArabīyah as-Saʿūdīyah, About this soundpronunciation (help·info)), is a country in Western Asia constituting the bulk of the Arabian Peninsula. With a land area of approximately 2,150,000 km2 (830,000 sq mi), Saudi Arabia is the largest sovereign state in the Middle East, geographically the fifth-largest in Asia, second-largest in the Arab world after Algeria and 12th-largest in the world. Saudi Arabia is bordered by Jordan and Iraq to the north, Kuwait to the northeast, Qatar, Bahrain, and the United Arab Emirates to the east, Oman to the southeast and Yemen to the south. It is separated from Israel and Egypt by the Gulf of Aqaba.", "Senegal is a country on Africa’s west coast with a rich French colonial heritage and many natural attractions. Dakar, the capital, features the ancient Médina district and esteemed Musée Théodore Monod, displaying African art. Dakar is also known for its nightlife, centered on native mbalax music. Saint-Louis, formerly the capital of French West Africa, has an old town with colonial architecture.", "Thailand is a Southeast Asian country. It's known for tropical beaches, opulent royal palaces, ancient ruins and ornate temples displaying figures of Buddha. In Bangkok, the capital, an ultramodern cityscape rises next to quiet canalside communities and the iconic temples of Wat Arun, Wat Pho and the Emerald Buddha Temple (Wat Phra Kaew). Nearby beach resorts include bustling Pattaya and fashionable Hua Hin.","The U.S. is a country of 50 states covering a vast swath of North America, with Alaska in the northwest and Hawaii extending the nation’s presence into the Pacific Ocean. Major Atlantic Coast cities are New York, a global finance and culture center, and capital Washington, DC. Midwestern metropolis Chicago is known for influential architecture and on the west coast, Los Angeles' Hollywood is famed for filmmaking."]
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

//
//  PersonalContactViewController.swift
//  PosysaevSA_HW2.7
//
//  Created by Sergei Posysaev on 03.11.2020.
//

import UIKit

class PersonalContactViewController: UIViewController {

    @IBOutlet weak var contactLabel: UILabel!
    
    var personalContactInfo: (String, String, String)! //0 -fullyName, 1 - phone, 2 - email
        
    override func viewDidLoad() {
        super.viewDidLoad()
        contactLabel.text = "Phone: \(personalContactInfo.1)\nE-mail: \(personalContactInfo.2)"
        navigationItem.title = "\(personalContactInfo.0)"
    }

}

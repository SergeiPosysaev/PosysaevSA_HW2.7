//
//  ContactsByGroupViewController.swift
//  PosysaevSA_HW2.7
//
//  Created by Sergei Posysaev on 03.11.2020.
//

import UIKit

class ContactsByGroupViewController: UITableViewController {

    
    let persons = Person.createArrayPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBarController?.navigationItem.title = "Personal list"
        tableView.delegate = self
        
    }

    override func viewWillAppear(_ animated: Bool) {
        tabBarController?.navigationItem.title = "Personal list"
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactWithGroup", for: indexPath)
        
        cell.textLabel?.font = .boldSystemFont(ofSize: 16.0)
        
        switch indexPath.row {
        case 0:
            cell.imageView?.image = UIImage(systemName: "phone.fill.connection")
            cell.textLabel?.text = persons[indexPath.section].phoneNumber
        case 1:
            cell.imageView?.image = UIImage(systemName: "envelope.badge")
            cell.textLabel?.text = persons[indexPath.section].email
        default:
            break
        }
        
        return cell
    }
    
}

extension ContactsByGroupViewController {
       
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        44
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {        
        persons[section].fullyName
    }
}

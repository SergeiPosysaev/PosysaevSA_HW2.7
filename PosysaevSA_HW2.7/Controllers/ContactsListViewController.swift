//
//  ContactsListViewController.swift
//  PosysaevSA_HW2.7
//
//  Created by Sergei Posysaev on 03.11.2020.
//

import UIKit

class ContactsListViewController: UITableViewController {

  
    let setPersons = Person.createArrayPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarController?.navigationItem.title = "Contacts list"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tabBarController?.navigationItem.title = "Contacts list"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let rowsInTable = setPersons.count
        return rowsInTable
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        cell.textLabel?.font = .boldSystemFont(ofSize: 18.0)
        cell.textLabel?.text = setPersons[indexPath.row].fullyName
        cell.detailTextLabel?.text = "\(setPersons[indexPath.row].phoneNumber), \(setPersons[indexPath.row].email)"
        cell.imageView?.image = UIImage(systemName: "person.fill")
        return cell
    }
    
   
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
       // setPersons
    }
   

    //MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
             
            let personalContactVC = segue.destination as! PersonalContactViewController
            guard let indexPath = tableView.indexPathForSelectedRow else {
                return
            }
            personalContactVC.personalContactInfo = (setPersons[indexPath.row].fullyName,
                                                     setPersons[indexPath.row].phoneNumber,
                                                     setPersons[indexPath.row].email)

        
    }    
}


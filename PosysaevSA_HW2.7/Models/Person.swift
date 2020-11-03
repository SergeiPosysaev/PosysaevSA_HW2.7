//
//  Person.swift
//  PosysaevSA_HW2.7
//
//  Created by Sergei Posysaev on 03.11.2020.
//

struct Person {
    let firstName: String
    let lastName: String
    let email: String
    let phoneNumber: String
    
    var fullyName: String {
        "\(firstName) \(lastName)"
    }
}

//
//  Person.swift
//  PosysaevSA_HW2.7
//
//  Created by Sergei Posysaev on 03.11.2020.
//

struct Person {
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let email: String
    
    var fullyName: String {
        "\(firstName) \(lastName)"
    }
}

extension Person {
    
    static func createArrayPersons() -> [Person] {
        let datamanager = DataManager()
        var resultPersons = [Person]()
        var count = 0
        
        for _ in 0..<datamanager.firstNames.count {
            let newPreson = datamanager[count]
            if newPreson != nil {
                resultPersons.append(newPreson!)
            }
            count += 1
        }
        return resultPersons
    }
}

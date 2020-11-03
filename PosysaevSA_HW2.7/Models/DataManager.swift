//
//  DataManager.swift
//  PosysaevSA_HW2.7
//
//  Created by Sergei Posysaev on 03.11.2020.
//

class DataManager {
    let firstNames: [String]
    let lastNames: [String]
    let phoneNumbers: [String]
    let emails: [String]
    
    subscript(index: Int) -> Person? {
        switch index {
        case 0..<firstNames.count:
            return  Person(firstName: self.firstNames[index],
                   lastName: self.lastNames[index],
                   phoneNumber: self.phoneNumbers[index],
                   email: self.emails[index])
        default:
            return nil
        }
    }
    
    init() {
        firstNames = ["John", "Woody", "Harrison", "Robin", "Robert",
                      "Stanly", "Clint", "Steven", "Morgan", "Denzel"]
        
        lastNames = ["Moretz", "Allen", "Williams", "Cage", "Spielberg",
                     "Freeman", "Ford", "Washington", "Eastwood", "Hoffman"]
        
        phoneNumbers = ["+1 (101) 111-11-11", "+1 (101) 222-11-11",
                        "+1 (101) 111-22-11", "+1 (101) 111-11-22",
                        "+1 (101) 333-11-11", "+1 (101) 111-33-11",
                        "+1 (101) 111-11-33", "+1 (101) 444-11-11",
                        "+1 (101) 111-44-11", "+1 (101) 111-11-44"]
        
        emails = ["moretz@mail.ru", "allen@mail.ru", "williams@mail.ru",
                  "cage@mail.ru", "ford@mail.ru", "freeman@mail.ru",
                  "hoffman@mail.ru", "spielberg@mail.ru", "eastwood@mail.ru",
                  "washington@mail.ru"]
    }
}

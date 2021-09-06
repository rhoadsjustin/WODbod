//
//  DailyScrum.swift
//  WODwatch
//
//  Created by Justin Rhoads on 8/29/21.
//

import Foundation
import SwiftUI

struct UserData: Identifiable, Codable {
    let id: UUID
    var firstName: String
    var lastName: String
    var age: String
    var weight: String
    var height: String
    
    init(id: UUID = UUID(), firstName: String, lastName: String, age: String, weight: String, height: String) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.weight = weight
        self.height = height
    }
}
extension UserData {
    static var data: UserData {
            UserData(firstName: "Justin", lastName: "Rhoads",  age: "31", weight: "250", height: "193.04")
    }
}
extension UserData {
    struct Data {
        var firstName: String = ""
        var lastName: String = ""
        var weight: String = ""
        var age: String = ""
        var height: String = ""
    }
    
    mutating func update(from data: Data) {
        firstName = data.firstName
        lastName = data.lastName
        weight = data.weight
        age = data.age
        height = data.height
    }
}


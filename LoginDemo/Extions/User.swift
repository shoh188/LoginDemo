//
//  User.swift
//  LoginDemo
//
//  Created by Shokhrukh Egamov on 27.02.2022.
//

import Foundation

struct User {
    
    // MARK: - Varaibles and Properties
    var firstName: String
    var lastName: String
    var email: String
    var password: String
    var phoneNumber: String
    var description: String {
      return """
      Name: \(firstName + " " + lastName)
      Email: \(email)
      Password: \(password)
      Phone Number: \("+998 "+phoneNumber)
      """
    }
}

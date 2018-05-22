//
//  User.swift
//  RandomUsers
//
//  Created by Maryam Fekri on 2018-05-22.
//  Copyright © 2018 EtienneMartin. All rights reserved.
//

import Foundation

// Super awesome model!
struct User: Codable {
    var firstName: String
    var lastName: String
    var username: String
    var password: String
}

extension User {
    init(responseUser: ResponseUser) {
        self.firstName = responseUser.name.first
        self.lastName = responseUser.name.last
        self.username = responseUser.login.username
        self.password = responseUser.login.password
    }
}

// Response Model
struct Results: Codable {
    var results: [ResponseUser]
}

// Response User
struct ResponseUser: Codable {
    struct Name: Codable {
        var first: String
        var last: String
    }
    var name: Name
    
    struct Login: Codable {
        var username: String
        var password: String
    }
    var login: Login
}

//
//  User.swift
//  CarouselPractice
//
//  Created by Marc Jacques on 10/19/19.
//  Copyright © 2019 Marc Jacques. All rights reserved.
//

import Foundation

struct UserResult: Codable {
    let results: [User]
    
}

struct User: Codable {
    let name: Name
}

struct Name: Codable {
    let first: String
    let last: String
}

//
//  User.swift
//  geo_guide
//
//  Created by osamu on 25.07.22.
//

import Foundation

struct User: Decodable,Equatable {
    var name: String
    
    private enum CodingKeys: String, CodingKey{
        case name = "login"
    }
}

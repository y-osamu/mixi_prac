//
//  Repo.swift
//  geo_guide
//
//  Created by osamu on 25.07.22.
//

import Foundation


struct Repo : Identifiable, Decodable,Equatable{
    var id: Int
    var name: String
    var owner: User
    var description: String?
    var stargazersCount: Int
    
}



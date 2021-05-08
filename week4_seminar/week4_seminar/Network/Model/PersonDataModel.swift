//
//  PersonDataModel.swift
//  week4_seminar
//
//  Created by 김윤서 on 2021/05/08.
//

import Foundation

struct PersonDataModel: Codable {
    let status: Int
    let success: Bool
    let message: String
    let data: Person
}

struct Person: Codable {
    let name, profileMessage: String

    enum CodingKeys: String, CodingKey {
        case name
        case profileMessage = "profile_message"
    }
}

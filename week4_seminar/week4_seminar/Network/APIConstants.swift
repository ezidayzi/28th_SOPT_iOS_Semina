//
//  APIConstants.swift
//  week4_seminar
//
//  Created by 김윤서 on 2021/05/08.
//

import Foundation
struct APIConstants{
    
    // MARK:- Base URL
    static let baseURL = "http://cherishserver.com"
    
    
    // MARK:- Feature URL
    
    static let loginURL = baseURL + "/login/signin"
    static let signupURL = baseURL + "/login/signup"
}

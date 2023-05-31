//
//  Constants.swift
//  AnsycAwait
//
//  Created by John on 31/05/23.
//

import Foundation

struct Constant{
    static let BaseUrl = "https://swapi.dev/api/"
    
    struct endpoint{
        static let people = "people/1"
    }
    
    struct Header{
        static let Headers = ["Authorization": "Bearer your_token",
                              "CustomHeader": "custom_value"]
    }
}

//
//  ApiResponse.swift
//  AnsycAwait
//
//  Created by John on 31/05/23.
//

import Foundation
struct ApiResponse: Codable , JsonDeserilizer{
    var statusCode: Int?
    var name: String?
    var height: String?
    var mass  : String?
    
    init() {
        statusCode = 0
        name = ""
        height = ""
        mass = ""
        
    }
    mutating func deserilize(values: Dictionary<String, Any>?) {
        name = values?["name"] as? String ?? ""
        height = values?["height"] as? String ?? ""
        mass = values?["mass"] as? String ?? ""
    }
    
}


struct PostApiResponse: Codable {
           let name: String?
        let height: String?
    let mass  : String?

}



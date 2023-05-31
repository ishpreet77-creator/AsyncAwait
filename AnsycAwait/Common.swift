//
//  Common.swift
//  AnsycAwait
//
//  Created by John on 31/05/23.
//

import Foundation

enum Method: String {
     case GET
     case POST
     case PUT
     case DELETE
  }
enum HTTPError: Error {
    case invalidResponse
    case requestFailed(Int)
    case invalidData
}

protocol JsonDeserilizer :Encodable,Decodable{
    init()
    var statusCode: Int?{set get}
    mutating func deserilize(values : Dictionary<String,Any>?)
}
protocol JsonSerilizer: Codable,Encodable{
    func serilize() -> Dictionary<String,Any>
}

struct CommonRequest: JsonSerilizer {
    
    func serilize() -> Dictionary<String, Any> {
        return [:]
    }
}


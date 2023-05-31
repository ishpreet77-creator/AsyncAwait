//
//  ApiRequest.swift
//  AnsycAwait
//
//  Created by John on 31/05/23.
//

import Foundation

//struct ApiRequest: Codable {
//    let name: String
//    let height: Int
//}
struct ApiRequest : JsonSerilizer {
  
    var name: String = ""
    var height : String = ""
    
    func serilize() -> Dictionary<String, Any> {
        return [
          
            "name": name,
            "height": height,
        ]
    }
}

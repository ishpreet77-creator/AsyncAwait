//
//  ApiService.swift
//  AnsycAwait
//
//  Created by John on 30/05/23.
//

import Foundation

class ApiService {
   
    let BaseUrl = Constant.BaseUrl

    func ApiHandler<T: Codable>(endpoint: String, method: Method,request: JsonSerilizer, headers: [String: String] = [:]) async throws -> T where T:JsonDeserilizer {
        let url = URL(string: BaseUrl + endpoint)
        var urlRequest = URLRequest(url: url!)
        urlRequest.httpMethod = method.rawValue
        
        do {
            let requestData = try JSONEncoder().encode(request)
            if method == .POST{
                urlRequest.httpBody = requestData
            }
           
            headers.forEach { key, value in
                urlRequest.setValue(value, forHTTPHeaderField: key)
            }
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            guard let httpResponse = response as? HTTPURLResponse else {
                throw HTTPError.invalidResponse
            }
            guard (200...299).contains(httpResponse.statusCode) else {
                throw HTTPError.requestFailed(httpResponse.statusCode)
            }
            let responseObject = try JSONDecoder().decode(T.self, from: data)
            return responseObject
        } catch {
            throw error
        }
    }

}

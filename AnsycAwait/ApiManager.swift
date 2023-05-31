//
//  ApiManager.swift
//  AnsycAwait
//
//  Created by John on 31/05/23.
//

import Foundation



class ApiManager {
    let apiService: ApiService
  
    init(apiService: ApiService) {
        self.apiService = apiService
    }
    
    func ApiHandler<T: JsonDeserilizer>(endpoint: String, method: Method, request: JsonSerilizer, completion: @escaping (Result<T, Error>) -> Void) {
        Task {
            do {
                let response: T = try await apiService.ApiHandler(endpoint: endpoint, method: method, request: request)
                completion(.success(response))
            } catch {
                completion(.failure(error))
            }
        }
    }
    
}

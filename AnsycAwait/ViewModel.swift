//
//  ViewModel.swift
//  AnsycAwait
//
//  Created by John on 30/05/23.
//

import Foundation

class ViewModel{
    
    private var manager: ApiManager
    init() {
        let apiService = ApiService()
        self.manager = ApiManager(apiService: apiService)
    }
    
    
    //MARK: getApi
    func fetchData(completion: @escaping (Result<ApiResponse, Error>) -> Void) {
        manager.ApiHandler(endpoint: Constant.endpoint.people, method: .GET, request: CommonRequest.init()) { result in
            completion(result)
        }
    }
    //MARK: POSTapi
    func setData(req:JsonSerilizer,completion: @escaping (Result<ApiResponse, Error>) -> Void) {
        manager.ApiHandler(endpoint: Constant.endpoint.people, method: .GET, request: req) { result in
            completion(result)
        }
    }

}



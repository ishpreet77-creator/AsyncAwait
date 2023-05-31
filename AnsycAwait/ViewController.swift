//
//  ViewController.swift
//  AnsycAwait
//
//  Created by John on 30/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    let viewModel = ViewModel()
    private var observer: NSObjectProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
        
    }
    func getData(){
        viewModel.fetchData { res in
            switch res {
            case .success(let response):
                // Handle success with the response data
                print("API Success: \(response)")
                
            case .failure(let error):
                // Handle failure with the error
                print("API Failure: \(error)")
            }
        }
        
    }
    func SetData(){
        viewModel.setData(req: ApiRequest(name: "", height: ""),
                          completion: { res in
            switch res{
                
            case .success(let response):
                // Handle success with the response data
                print("API Success: \(response)")
                
            case .failure(let error):
                // Handle failure with the error
                print("API Failure: \(error)")
                
            }
        })
    }
}

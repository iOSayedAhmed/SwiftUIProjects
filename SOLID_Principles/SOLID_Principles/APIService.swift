//
//  APIService.swift
//  SOLID_Principles
//
//  Created by Develop on 05/10/2022.
//

import Foundation
enum CustomError:Error {
    case BadURl
    case NoData
    case DecodingError
}


struct ProductModel:Codable {
    let id:Int?
    let title:String?
    let price:String?
    let caregory:String
    let description:String?
    
}

class APIService {
   static let shared = APIService()
    func getData(completion: @escaping(Result<[ProductModel],CustomError>)->()) {
        guard let url = URL(string: "https://fakestoreapi.com/products") else {
            return completion(.failure(.BadURl))
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                return completion(.failure(.NoData))
            }
            //Success
            let responseData = try? JSONDecoder().decode([ProductModel].self, from: data)
            if let responseData = responseData {
                return completion(.success(responseData))
            }else {
                return completion(.failure(.DecodingError))
            }

        }.resume()
    }
    
}

class APIHandler {
    
}

class ResponseHandler {
    
}

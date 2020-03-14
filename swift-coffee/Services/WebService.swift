//
//  WebService.swift
//  swift-coffee
//
//  Created by User on 2020/3/14.
//  Copyright © 2020 NTUB. All rights reserved.
//

import Foundation

enum NetWorkError: Error {
    case decordingError
    case domainError
    case urlError
}

struct Resource<T: Codable> {
    let url: URL
}

class WebService {

    func load<T>(resource: Resource<T>, completion: @escaping (Result<T, NetWorkError>) -> Void) {
        URLSession.shared.dataTask(with: resource.url) { data, response, error in
            guard let data = data, error == nil else {
                completion(.failure(.domainError))
                return
            }
            
            let result = try? JSONDecoder().decode(T.self, from: data)
            if let result = result {
                DispatchQueue.main.async {
                    completion(.success(result))
                }
            } else {
                completion(.failure(.decordingError))
            }
        }.resume()
    }

}

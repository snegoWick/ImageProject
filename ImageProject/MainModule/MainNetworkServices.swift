//
//  MainNetworkServices.swift
//  ImageProject
//
//  Created by Aleksandr Makarov on 02.04.2022.
//

import UIKit

protocol MainNetworkServicesProtocol {
    func getImageFromUrl(completion: @escaping (Result<UIImage, Error>) -> Void)
}

final class MainNetworkServices: MainNetworkServicesProtocol {
    func getImageFromUrl(completion: @escaping (Result<UIImage, Error>) -> Void) {
        guard let url = URL(string: "https://images.unsplash.com/photo-1649080697402-358916a61b4c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80") else { return }
        let session = URLSession.shared
        session.dataTask(with: url) { data, _, error in
            if let error = error {
                completion(.failure(error))
            }
            if let data = data, let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    completion(.success(image))
                }
            }
        }.resume()
    }
}

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

class MainNetworkServices: MainNetworkServicesProtocol {
    func getImageFromUrl(completion: @escaping (Result<UIImage, Error>) -> Void) {
        guard let url = URL(string: "https://img3.goodfon.ru/original/2518x1721/7/7a/priroda-nebo-oblaka-more-plyazh-2327.jpg") else { return }
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

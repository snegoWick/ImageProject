//
//  MainPresenter.swift
//  ImageProject
//
//  Created by Aleksandr Makarov on 02.04.2022.
//

import UIKit

protocol MainViewProtocol: AnyObject {
    func success()
    func failure(error: Error)
}

protocol MainPresenterProtocol: AnyObject {
    init(view: MainViewProtocol, networkService: MainNetworkServicesProtocol, router: RouterProtocol)
    func getImage()
    var image: UIImage? { get set }
    func tapImage(image: UIImage?)
}

class MainPresenter: MainPresenterProtocol {
    
    weak var view: MainViewProtocol?
    var router: RouterProtocol?
    let networkService: MainNetworkServicesProtocol!
    var image: UIImage?
    
    required init(view: MainViewProtocol, networkService: MainNetworkServicesProtocol, router: RouterProtocol) {
        self.view = view
        self.router = router
        self.networkService = networkService
    }
    
    func getImage() {
        networkService.getImageFromUrl { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let image):
                self.image = image
                self.view?.success()
            case .failure(let error):
                self.view?.failure(error: error)
            }
        }
    }
    
    func tapImage(image: UIImage?) {
        router?.showDetail(image: image)
    }
}

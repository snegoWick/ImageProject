//
//  DetailPresenter.swift
//  ImageProject
//
//  Created by Aleksandr Makarov on 03.04.2022.
//

import UIKit

protocol DetailViewProtocol: AnyObject {
    func setImage(detailImage: UIImage?)
}

protocol DetailPresenterProtocol: AnyObject {
    init(view: DetailViewProtocol, router: RouterProtocol, detailImage: UIImage?)
    func getImage()
}

class DetailPresenter: DetailPresenterProtocol {
    
    weak var view: DetailViewProtocol?
    var router: RouterProtocol?
    var detailImage: UIImage?
    
    required init(view: DetailViewProtocol, router: RouterProtocol, detailImage: UIImage?) {
        self.view = view
        self.router = router
        self.detailImage = detailImage
    }
    
    func getImage() {
        view?.setImage(detailImage: detailImage)
    }
}

//
//  ModuleBuilder.swift
//  ImageProject
//
//  Created by Aleksandr Makarov on 03.04.2022.
//

import UIKit

protocol AssemblyBuilderProtocol {
    func createMainModule(router: RouterProtocol) -> UIViewController
    func createDetailModule(image: UIImage?, router: RouterProtocol) -> UIViewController
}

class ModuleBuilder: AssemblyBuilderProtocol {
    
    func createMainModule(router: RouterProtocol) -> UIViewController {
        let view = MainViewController()
        let mainNetworkService = MainNetworkServices()
        let presenter = MainPresenter(view: view, networkService: mainNetworkService, router: router)
        view.presenter = presenter
        return view
    }
    
    func createDetailModule(image: UIImage?, router: RouterProtocol) -> UIViewController {
        let view = DetailViewController()
        let presenter = DetailPresenter(view: view, router: router, detailImage: image)
        view.presenter = presenter
        return view
    }
}

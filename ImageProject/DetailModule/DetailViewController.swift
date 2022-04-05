//
//  DetailViewController.swift
//  ImageProject
//
//  Created by Aleksandr Makarov on 03.04.2022.
//

import UIKit

final class DetailViewController: UIViewController {
    
    private var detailView: DetailView { return self.view as! DetailView }
    var presenter: DetailPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.getImage()
    }
    
    override func loadView() {
        view = DetailView(frame: UIScreen.main.bounds)
    }
}

extension DetailViewController: DetailViewProtocol {
    func setImage(detailImage: UIImage?) {
        detailView.detailImageView.image = detailImage
    }
}

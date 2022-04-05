//
//  ViewController.swift
//  ImageProject
//
//  Created by Aleksandr Makarov on 02.04.2022.
//

import UIKit

final class MainViewController: UIViewController {
    
    var presenter: MainPresenterProtocol!
    private var mainView: MainView { return self.view as! MainView }

    override func viewDidLoad() {
        super.viewDidLoad()
        buttonsHandler()
    }
    
    override func loadView() {
        view = MainView(frame: UIScreen.main.bounds)
    }
   
    //MARK: - Buttons handler
    private func buttonsHandler() {
        mainView.getImageButton.addTarget(self, action: #selector(getImageButtonTapped), for: .touchUpInside)
        mainView.detailButton.addTarget(self, action: #selector(detailButtonTapped), for: .touchUpInside)
    }
    
    //MARK: - Functions
    @objc private func getImageButtonTapped() {
        mainView.spinner.startAnimating()
        presenter.getImage()
    }
    
    @objc private func detailButtonTapped() {
        guard let image = mainView.imageView.image else { return }
        presenter.tapImage(image: image)
    }
}

//MARK: - Extensions
extension MainViewController: MainViewProtocol {
    func success() {
        mainView.spinner.stopAnimating()
        mainView.getImageButton.isHidden = true
        mainView.detailButton.isHidden = false
        mainView.imageView.image = presenter.image
    }
    
    func failure(error: Error) {
        mainView.spinner.stopAnimating()
        print(error.localizedDescription)
    }
}

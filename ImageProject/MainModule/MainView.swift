//
//  MainView.swift
//  ImageProject
//
//  Created by Aleksandr Makarov on 03.04.2022.
//

import UIKit

class MainView: UIView {
    
    var imageView = UIImageView() 
    let getImageButton = UIButton.setupButton(title: "Tap to download", buttonColor: .clear, cornerRadius: 0, fontOfSize: 24)
    let spinner = UIActivityIndicatorView()
    let detailButton = UIButton.setupButton(title: "Open full image", buttonColor: .clear, cornerRadius: 12, fontOfSize: 24)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        
        backgroundColor = .rgb(red: 240, green: 240, blue: 240, alpha: 1)
        
        addSubview(imageView)
        imageView.frame = bounds
        imageView.contentMode = .scaleAspectFit
        
        addSubview(getImageButton)
        getImageButton.centerInSuperview()
        
        addSubview(detailButton)
        detailButton.anchor(top: nil, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 0, left: 0, bottom: 100, right: 0))
        detailButton.isHidden = true
        
        imageView.addSubview(spinner)
        spinner.anchor(top: getImageButton.bottomAnchor, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 24, left: 0, bottom: 0, right: 0))
        spinner.centerXAnchor.constraint(equalTo: imageView.centerXAnchor).isActive = true
    }
}

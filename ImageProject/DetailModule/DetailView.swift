//
//  DetailView.swift
//  ImageProject
//
//  Created by Aleksandr Makarov on 03.04.2022.
//

import UIKit

class DetailView: UIView {
    
    private var scrollView: UIScrollView!
    let detailImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        scrollView = UIScrollView(frame: bounds)
        scrollView.backgroundColor = .gray
        scrollView.addSubview(detailImageView)
        detailImageView.frame.size = .init(width: 1000, height: 800)
        scrollView.contentSize = self.detailImageView.bounds.size
        addSubview(scrollView)
    }
}


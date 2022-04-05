//
//  Extension - UIButton.swift
//  ImageProject
//
//  Created by Aleksandr Makarov on 02.04.2022.
//

import UIKit

extension UIButton {
    class final func setupButton(title: String, buttonColor: UIColor, cornerRadius: CGFloat, fontOfSize: CGFloat) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = buttonColor
        button.layer.cornerRadius = cornerRadius
        button.titleLabel?.font = UIFont.systemFont(ofSize: fontOfSize)
        return button
    }
}

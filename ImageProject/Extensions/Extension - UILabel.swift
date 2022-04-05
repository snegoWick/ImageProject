//
//  Extension - UILabel.swift
//  ImageProject
//
//  Created by Aleksandr Makarov on 02.04.2022.
//

import UIKit

extension UILabel {
    class func setupLabel(text: String?, textColor: UIColor, fontSize: CGFloat) -> UILabel {
        let label = UILabel()
        label.lineBreakMode = .byWordWrapping
        label.text = text
        label.textColor = textColor
        label.font = UIFont.systemFont(ofSize: fontSize)
        label.clipsToBounds = true
        return label
    }
}

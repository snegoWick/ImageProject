//
//  Extension - UIColor.swift
//  ImageProject
//
//  Created by Aleksandr Makarov on 02.04.2022.
//

import UIKit

extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha/1)
    }
}

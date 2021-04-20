//
//  UIStoryboardExtension.swift
//  Financeiro
//
//  Created by Jonathan Alajoan Rocha on 23/03/21.
//

import Foundation
import UIKit

extension UIStoryboard {
    static func buildMainController() -> UIViewController {
        return mainViewStoryBoard.instantiateViewController(withIdentifier: "Main")
    }
}


extension UIStoryboard {
    static var mainViewStoryBoard: UIStoryboard {
        return getStoryBoard(name: "Main")
    }
}

extension UIStoryboard {
    static func getStoryBoard(name: String) -> UIStoryboard {
        return UIStoryboard(name: name, bundle:  nil)
    }
}

//
//  UIalert.swift
//  LoginDemo
//
//  Created by Shokhrukh Egamov on 27.02.2022.
//


import UIKit

extension UIViewController {
    
    // MARK: Static Computed Properties
    static var reusableIdentifier: String {
        String(describing: self)
    }

    // MARK: Methods
    func showAlertWith(message: String) {
        let alert = UIAlertController(title: AppConstants.alertTitle, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: AppConstants.alertActionOk, style: .default ))
        present(alert, animated: true, completion: nil)
    }
    
    // MARK: Static Methods
    static func instantiate<ViewController: UIViewController>(_ viewControllerType: ViewController.Type,
                                                              fromStoryboard storyboardName: UIStoryboard.Name) -> ViewController {
        let storyboard = UIStoryboard(name: storyboardName.rawValue, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: viewControllerType.reusableIdentifier) as! ViewController
    }
}

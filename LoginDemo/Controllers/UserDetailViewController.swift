//
//  UserDetailViewController.swift
//  LoginDemo
//
//  Created by Shokhrukh Egamov on 27.02.2022.
//

import UIKit

class UserDetailViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var textView: UITextView!
    
    // MARK: Properties
    var details: String?
    
    // MARK: Lifecycle Methods
    override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)
      textView.text = details
    }
}

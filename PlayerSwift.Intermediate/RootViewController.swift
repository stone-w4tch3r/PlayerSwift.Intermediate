//
//  ViewController.swift
//  PlayerSwift.Intermediate
//
//  Created by me on 2023/04/13.
//
//

import UIKit


class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "RootVc"

        setupSubviews()
    }
    
    private func setupSubviews() {
        let label = UILabel()
        label.text = "Hello, World!"
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}

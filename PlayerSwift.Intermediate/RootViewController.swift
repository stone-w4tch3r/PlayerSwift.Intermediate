//
//  ViewController.swift
//  PlayerSwift.Intermediate
//
//  Created by me on 2023/04/13.
//
//

import UIKit


class RootViewController: UIViewController {

    let label = UILabel()
    let button = UIButton(type: .roundedRect)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "RootVc"

        setupSubviews()
    }
    
    private func setupSubviews() {
        label.text = "Hello, World!"
        button.setTitle("go next", for: .normal)
        button.addTarget(self, action: #selector(onButtonClicked), for: .touchUpInside)
                 
        view.addSubview(label)
        view.addSubview(button)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20).isActive = true
    }
    
    @objc func onButtonClicked(_ sender: UIButton){
        if sender == button {
            let vc = NextViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

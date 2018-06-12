//
//  ViewController.swift
//  SimpleTest
//
//  Created by Jonathan Bourgeois on 6/12/18.
//  Copyright © 2018 Bravo Technology Consulting. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let helloLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(helloLabel)
        
        NSLayoutConstraint.activate([helloLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                     helloLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                                     helloLabel.heightAnchor.constraint(equalToConstant: 50)])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


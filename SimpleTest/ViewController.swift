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
        label.textColor = .myPink
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.midnightBlue
        
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

// Convenience extension to UIColor so I don't have to constantly use rr/255, gg/255, bb/255 alpha 1

extension UIColor {
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
    
    // Define my own colors
    static var myPink = UIColor(r: 232, g: 68, b: 133)
    static var midnightBlue = UIColor(r: 61, g: 91, b: 151)
}



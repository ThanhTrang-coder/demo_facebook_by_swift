//
//  CustomTabBarController.swift
//  demoFacebookUI
//
//  Created by Tung on 20/12/2023.
//

import UIKit

class CustomTabBarController: UITabBarController {

    @IBOutlet weak var customTabBar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }

    override var traitCollection: UITraitCollection {
        let traitCollection = super.traitCollection
        let newTraitCollection = UITraitCollection(horizontalSizeClass: .regular)
        return UITraitCollection(traitsFrom: [traitCollection, newTraitCollection])
    }
}

//
//  ViewController.swift
//  Lovelace
//
//  Created by Benjamin Su on 12/16/16.
//  Copyright © 2016 Benjamin Su. All rights reserved.
//

import UIKit

class AppViewController: UIViewController {
    
    var actingVC: UIViewController!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        actingVC = LoadingViewController()
        
        addChildViewController(actingVC)
        
        self.view.addSubview(actingVC.view)
        
        self.view.backgroundColor = UIColor.white
        
    }

    
    
    
}


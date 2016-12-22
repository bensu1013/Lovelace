//
//  LoadingViewController.swift
//  Lovelace
//
//  Created by Benjamin Su on 12/16/16.
//  Copyright © 2016 Benjamin Su. All rights reserved.
//

import UIKit

class LoadingViewController: UIViewController, CAAnimationDelegate {

    var titleLabel = UILabel()
    var titleFadeView = UIView()
    var gradientLayer = CAGradientLayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.layer.addSublayer(gradientLayer)
        gradientLayer.frame = self.view.bounds
        
        
        let color1 = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0).cgColor
        let color2 = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0).cgColor
        
        gradientLayer.colors = [color1, color2]
        gradientLayer.locations = [0.0, 1.0]
        
        
        
        
        
        
        titleLabel.text = "Lovelace"
        setupSubviews()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        
        animateLayer(with: 1.0, name: "dark")
//        animateLayer(with: 0.5, name: "light")
    }
    
    
    
    
    
    
    
    
    func animateLayer(with alpha: CGFloat, name: String){
        
        let color1 = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: alpha).cgColor
        let color2 = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: alpha).cgColor
        
        var fromColors = self.gradientLayer.colors
        var toColors: [AnyObject] = [ color1, color2]
        
        var animation : CABasicAnimation = CABasicAnimation(keyPath: "colors")
        
        animation.fromValue = fromColors
        animation.toValue = toColors
        animation.duration = 3.00
        animation.fillMode = kCAFillModeForwards
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        animation.delegate = self
        animation.isRemovedOnCompletion = false
        
        self.gradientLayer.add(animation, forKey: name)
        
        
        
        
        
        
        
        
    }
    

    
    
    
    
    
    func setupSubviews() {
        
        self.view.addSubview(titleLabel)
        titleLabel.frame = CGRect(x: self.view.bounds.width * 0.25, y: self.view.bounds.height * 0.45, width: self.view.bounds.width * 0.5, height: self.view.bounds.height * 0.1)
        titleLabel.backgroundColor = UIColor.clear
        titleLabel.textAlignment = .center
        titleLabel.textColor = UIColor.white
        
//        self.view.addSubview(titleFadeView)
//        titleFadeView.frame = CGRect(x: self.view.bounds.width * 0.25, y: self.view.bounds.height * 0.45, width: self.view.bounds.width * 0.5, height: self.view.bounds.height * 0.1)
//        titleFadeView.backgroundColor = UIColor.white
//        titleFadeView.alpha = 0.0
        
        
    }
    

}













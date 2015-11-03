//
//  ViewController.swift
//  MotionEffect
//
//  Created by qihaijun on 11/3/15.
//  Copyright © 2015 VictorChee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        addMotionEffectForView(backgroundImageView, depth: 20.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    private func addMotionEffectForView(view: UIView, depth: Double) {
        let horizontalEffect = UIInterpolatingMotionEffect(keyPath: "center.x", type: UIInterpolatingMotionEffectType.TiltAlongHorizontalAxis)
        horizontalEffect.maximumRelativeValue = NSNumber(double: depth)
        horizontalEffect.minimumRelativeValue = NSNumber(double: -depth)
        view.addMotionEffect(horizontalEffect)
        
        let verticalEffect = UIInterpolatingMotionEffect(keyPath: "center.y", type: UIInterpolatingMotionEffectType.TiltAlongVerticalAxis)
        verticalEffect.maximumRelativeValue = NSNumber(double: depth)
        verticalEffect.minimumRelativeValue = NSNumber(double: -depth)
        view.addMotionEffect(verticalEffect)
    }

}


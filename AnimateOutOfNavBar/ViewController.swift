//
//  ViewController.swift
//  AnimateOutOfNavBar
//
//  Created by Keegan Rush on 2017/08/16.
//  Copyright © 2017 KeeganRush. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let animatedViewHeight = CGFloat(100)
        let widthOfCurrentView = view.frame.width
        let animatedView = UIView(frame: CGRect(x: 0,
                                                y: -animatedViewHeight,
                                                width: widthOfCurrentView,
                                                height: animatedViewHeight))
        animatedView.backgroundColor = .red
        
        view.addSubview(animatedView)
        
        UIView.animate(withDuration: 1.0, animations: {
            animatedView.transform = animatedView.transform.translatedBy(x: 0, y: animatedViewHeight)
        }, completion: { _ in
            UIView.animate(withDuration: 1.0, delay: 1.0, animations: {
                animatedView.transform = CGAffineTransform.identity
            })
            
        })
        
    }

}


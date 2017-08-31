//
//  ViewController.swift
//  AnimateOutOfNavBar
//
//  Created by Keegan Rush on 2017/08/16.
//  Copyright © 2017 KeeganRush. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
@IBAction private func startToastAnimation(_ sender: Any) {
    
    let toastView = createToastView()
    view.addSubview(toastView)
    animate(toastView: toastView)
}

private func createToastView() -> UIView {
    // 1.
    let toastViewHeight = CGFloat(80)
    let toastView = UIView(frame: CGRect(x: view.frame.origin.x,
                                         y: -toastViewHeight,
                                         width: view.frame.width,
                                         height: toastViewHeight))
    toastView.backgroundColor = .green
    return toastView
}

private func animate(toastView: UIView) {
    
    UIView.animate(withDuration: 1.0, animations: {
        // 2.
        toastView.transform = toastView.transform
            .translatedBy(x: 0, y: toastView.frame.height)
    }, completion: { _ in
        // 3.
        UIView.animate(withDuration: 1.0, delay: 1.0, animations: {
            toastView.transform = .identity
        }, completion: { _ in
            // 4.
            toastView.removeFromSuperview()
        })
    })
}
}


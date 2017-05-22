//
//  ViewController.swift
//  SideMenu
//
//  Created by park kyung suk on 2017/05/22.
//  Copyright © 2017年 park kyung suk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var trailingConstraint: NSLayoutConstraint!
    @IBOutlet weak var menuView: UIView!
    
    var isMenuShowing = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    @IBAction func openMenu(_ sender: Any) {
        
        if isMenuShowing {
            leadingConstraint.constant = 100
            trailingConstraint.constant = -100
            
            UIView.animate(withDuration: 0.3, animations: { 
                self.view.layoutIfNeeded()
            })
        } else {
            leadingConstraint.constant = 0
            trailingConstraint.constant = 0
            
            UIView.animate(withDuration: 0.3, animations: { 
                self.view.layoutIfNeeded()
            })
        }
        isMenuShowing = !isMenuShowing
    }
}


//
//  ContainerVC.swift
//  Seeking Tulsa
//
//  Created by P.M. Student on 12/9/19.
//  Copyright © 2019 Gauge Parker. All rights reserved.
//

import UIKit

 class SideMenuVC: UIViewController{
    
    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
       var sideMenuOpen = false
    
override func viewDidLoad() {
       super.viewDidLoad()
    NotificationCenter.default.addObserver(self,
                                               selector: #selector(toggleSideMenu),
                                               name: NSNotification.Name("ToggleSideMenu"),
                                               object: nil)
    }
    
    @objc func toggleSideMenu() {
        if sideMenuOpen {
            sideMenuOpen = false
            sideMenuConstraint.constant = -240
            
        } else {
            sideMenuOpen = true
            sideMenuConstraint.constant = 0
        }
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
    

}

func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        
        switch indexPath.row {
        case 0: NotificationCenter.default.post(name: NSNotification.Name("ShowMap"), object: nil)
        case 1: NotificationCenter.default.post(name: NSNotification.Name("ShowSettings"), object: nil)
        case 2: NotificationCenter.default.post(name: NSNotification.Name("ShowSignIn"), object: nil)
        default: break
        }
    }


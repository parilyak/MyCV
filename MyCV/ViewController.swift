//
//  ViewController.swift
//  MyCV
//
//  Created by Lily  on 03.05.2019.
//  Copyright © 2019 Lily . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewContainer: UIView!
    var simpleView1: UIView!
    var simpleView2: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        simpleView1 = SimpleVC1().view
        simpleView2 = SimpleVC2().view
        viewContainer.addSubview(simpleView1)
        viewContainer.addSubview(simpleView2)
    }

    
    
    @IBAction func switchViewAction(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        
        case 0:
            viewContainer.bringSubviewToFront(simpleView1)
            break
            
        case 1:
            viewContainer.bringSubviewToFront(simpleView2)
            break
            
        default:
            break
        }
        
        
    }
    
    
    
    
    
}


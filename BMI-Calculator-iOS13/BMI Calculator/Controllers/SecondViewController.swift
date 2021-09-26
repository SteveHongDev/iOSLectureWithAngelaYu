//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by 홍성범 on 2021/09/26.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.text = "Hello"
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}

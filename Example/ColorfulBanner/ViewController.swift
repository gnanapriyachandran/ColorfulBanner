//
//  ViewController.swift
//  ColorfulBanner
//
//  Created by gnanapriyachandran on 10/02/2020.
//  Copyright (c) 2020 gnanapriyachandran. All rights reserved.
//

import UIKit
import ColorfulBanner

class ViewController: UIViewController {
  let colorView = ColorView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(colorView.loadViewFromNib())
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


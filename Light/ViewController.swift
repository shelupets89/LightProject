//
//  ViewController.swift
//  Light
//
//  Created by Dima Shelupets on 2/9/19.
//  Copyright © 2019 Dima Shelupets. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = true
    
    @IBAction func buttonPressed(_ sender: UIButton) {
   print("кнопка нажата")
            lightOn = !lightOn
        
        if lightOn {
        view.backgroundColor = .white
        } else {
            view.backgroundColor = .black
        }

        
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


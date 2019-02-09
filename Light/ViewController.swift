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
        updateUI()
        
        }
        
        
        func updateUI() {
             view.backgroundColor = lightOn ? .white : .black
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }


}


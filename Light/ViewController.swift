//
//  ViewController.swift
//  Light
//
//  Created by Dima Shelupets on 2/9/19.
//  Copyright © 2019 Dima Shelupets. All rights reserved.
//

import AVFoundation
import UIKit

class ViewController: UIViewController {
    
    var lightOn = true
    
    @IBAction func buttonPressed(_ sender: UIButton) {
   print("кнопка нажата")
            lightOn = !lightOn
        
        updateUI()
        
        }
        func updateUI() {
            let device = AVCaptureDevice.default(for: AVMediaType.video)
            if let dev = device, dev.hasTorch {
            view.backgroundColor = .black
                do
                {
            try dev.lockForConfiguration()
            dev.torchMode = lightOn ? .on : .off
            dev.unlockForConfiguration()
        } catch {
            print(error) }
        } else {
             view.backgroundColor = lightOn ? .white : .black
            }
            
        }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }


}


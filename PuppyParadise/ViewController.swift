//
//  ViewController.swift
//  PuppyParadise
//
//  Created by Alec O'Connor on 10/10/17.
//  Copyright © 2017 Alec O'Connor. All rights reserved.
//

import UIKit
import GHModalStatus

class ViewController: UIViewController {
    @IBAction func saveTapped(_ sender: Any) {
        presentModalStatusView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func presentModalStatusView() {
        let modalView = GHModalStatusView(frame: self.view.bounds)
        let downloadImage = UIImage(named: "download") ?? UIImage()
     
        modalView.set(image: downloadImage)
        modalView.set(headline: "Testing")
        modalView.set(subheading: "A simple test with two lines")
        
        view.addSubview(modalView)
    }
}


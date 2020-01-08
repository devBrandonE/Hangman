//
//  ViewController.swift
//  hangMAN
//
//  Created by Brandon Escobar on 12/2/19.
//  Copyright © 2019 Brandon Escobar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "firstToSecond", sender: self)
    }
    

}


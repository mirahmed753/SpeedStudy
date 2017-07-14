//
//  ViewController.swift
//  Speed Study
//
//  Created by Johnny Chiu on 7/10/17.
//  Copyright © 2017 MiniProject. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func calculusButtonTapped(_ sender: Any) {
        
    }
    @IBOutlet weak var calculusButton: UIButton!
    @IBOutlet weak var compsciButton: UIButton!
    @IBOutlet weak var historyButton: UIButton!
    @IBOutlet weak var geographyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // make buttons circular
        calculusButton.layer.cornerRadius = 15
        compsciButton.layer.cornerRadius = 15
        historyButton.layer.cornerRadius = 15
        geographyButton.layer.cornerRadius = 15
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        
    }


}


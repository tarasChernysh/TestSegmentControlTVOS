//
//  ViewController.swift
//  TVosTest
//
//  Created by Taras Chernysh on 11.02.2020.
//  Copyright © 2020 Taras Chernysh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testButton: UIButton!
    @IBOutlet weak var segmentedControl: TestSegmentedControl!
    
    
    override var preferredFocusEnvironments: [UIFocusEnvironment] {
        return [segmentedControl, testButton]
    }
    
    
    @IBAction func segmentedChanged(_ sender: TestSegmentedControl) {
        
        sender.updateIfFocused()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    private func setup() {
        segmentedControl.configureBB()
        segmentedControl.selectedSegmentTintColor = .yellow
    }
}


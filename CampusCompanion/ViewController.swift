//
//  ViewController.swift
//  CampusCompanion
//
//  Created by SHIREALETH ACORDA on 9/23/26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var getStartedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func getStartedTap(_ sender: UIButton) {
        sender.setTitle("Let's get started!", for: .normal)
    }
}


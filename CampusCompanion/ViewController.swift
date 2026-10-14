//
//  ViewController.swift
//  CampusCompanion
//
//  Created by SHIREALETH ACORDA on 9/23/26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func exploreButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "ShowDetailSegue", sender: self)
    }
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var notifySwitch: UISwitch!
    
    
    @IBOutlet weak var roleSegmentedControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}


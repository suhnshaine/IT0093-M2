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
        nameTextField.resignFirstResponder()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { guard segue.identifier == "ShowDetailSegue",
    let destination = segue.destination as? DetailViewController else { return
    }
    let enteredName = nameTextField.text ?? ""
        destination.studentName = enteredName.isEmpty ? "Student" : enteredName; destination.notificationsEnabled = notifySwitch.isOn
    destination.selectedRole = roleSegmentedControl.selectedSegmentIndex == 0
    ? "Student" : "Faculty"
    }

    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var notifySwitch: UISwitch!
    
    
    @IBOutlet weak var roleSegmentedControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}


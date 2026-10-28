//
//  ViewController.swift
//  CampusCompanion
//
//  Created by SHIREALETH ACORDA on 9/23/26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var eventDatePicker: UIDatePicker!
    @IBOutlet weak var guestStepper: UIStepper!
    @IBOutlet weak var guestCountLabel: UILabel!
    
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
        destination.preferredEventDate = eventDatePicker.date
        destination.numberOfGuests = Int(guestStepper.value)
    }

    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var notifySwitch: UISwitch!
    
    
    @IBOutlet weak var roleSegmentedControl: UISegmentedControl!
    
    @IBAction func guestStepperChanged(_ sender: UIStepper) {
        guestCountLabel.text = "Guests: \(Int(sender.value))"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guestStepper.minimumValue = 1
        guestStepper.maximumValue = 10
        guestStepper.value = 1

        guestCountLabel.text = "Guests: 1"
    }
}


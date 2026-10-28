//
//  Untitled.swift
//  CampusCompanion
//
//  Created by SHIREALETH ACORDA on 10/14/26.
//

import UIKit
class DetailViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    var studentName: String = ""
    var notificationsEnabled: Bool = false
    var selectedRole: String = ""
    var preferredEventDate: Date = Date()
    var numberOfGuests: Int = 1
    override func viewDidLoad() { super.viewDidLoad()
    title = "Campus Events"
    let notificationStatus = notificationsEnabled ? "on" : "off"
        let formatter = DateFormatter()
        formatter.dateStyle = .medium

        let eventDate = formatter.string(from: preferredEventDate)
    messageLabel.text = """
        Welcome, \(studentName)! (\(selectedRole))
        Notifications: \(notificationStatus)
        Event Date: \(eventDate).
        Number of Guests: \(numberOfGuests)
        """
    }
}

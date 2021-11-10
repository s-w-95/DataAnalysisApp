//
//  FeedBackViewController.swift
//  Integrate
//
//  Created by jaewon on 11/10/21.
//

import UIKit

class FeedBackViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func lightButtonClicked(_ sender: Any) {
        let noti = UIImpactFeedbackGenerator(style: .light)
        noti.impactOccurred()
    }
    @IBAction func heavyButtonClicked(_ sender: Any) {
        let noti = UIImpactFeedbackGenerator(style: .heavy)
        noti.impactOccurred()
    }
    @IBAction func selectButtonClicked(_ sender: Any) {
        let noti = UISelectionFeedbackGenerator()
        noti.selectionChanged()
    }
    @IBAction func successButtonClicked(_ sender: Any) {
        let noti = UINotificationFeedbackGenerator()
        noti.notificationOccurred(.success)
    }
    @IBAction func errorButtonClicked(_ sender: Any) {
        let noti = UINotificationFeedbackGenerator()
        noti.notificationOccurred(.error)
    }
    @IBAction func warningButtonClicked(_ sender: Any) {
        let noti = UINotificationFeedbackGenerator()
        noti.notificationOccurred(.warning)
    }
}

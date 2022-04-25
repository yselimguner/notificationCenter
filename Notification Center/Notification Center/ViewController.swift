//
//  ViewController.swift
//  Notification Center
//
//  Created by Yavuz Güner on 25.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.doIt(notification:)), name: .notificationName, object: nil)
        
    }
    
    @objc func doIt(notification:NSNotification){
        let comesMessage  = notification.userInfo!["Message"]
        let comesDate  = notification.userInfo!["Date"]
        let comesWho = notification.userInfo!["Who"] as! Players

        
        labelResult.text = "\(comesWho.playerName!) - \(comesWho.playerAge!) - \(comesDate!) - \(comesMessage!)"
    }

}

extension Notification.Name{
    static let notificationName = Notification.Name("myNotification")
}

//
//  ViewController2.swift
//  Notification Center
//
//  Created by Yavuz Güner on 25.04.2022.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func sendButton(_ sender: Any) {
        
        
        let player1 = Players(playerName: "Yavuz", playerAge: 25)
        let player2 = Players(playerName: "Selim", playerAge: 27)
        
        NotificationCenter.default.post(name: .notificationName, object: nil, userInfo: ["Message": "Hi", "Date":Date(),"Who":player1])
        
        //Buna bastığımız an geriye döner
        dismiss(animated: true)
    }
    
}

//
//  TabVC.swift
//  tourist
//
//  Created by Tsnim Alqahtani on 18/04/1443 AH.
//

import UIKit
import FirebaseAuth


class TabVC: UITabBarController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.backgroundColor = UIColor(displayP3Red: 230/255, green:  220/255, blue: 200/255, alpha: 1)

        view.backgroundColor = .white
        
        guard let currentUserId = Auth.auth().currentUser?.uid else {
            return
        }

        UsersService.shared.updateUserInfo(
            user: User(
                id: currentUserId,
                name: "Tasnim",
                email: ""
            )
        )

        viewControllers = [
           HomeVC(),
           Weather(),
           ProfileVC()
           
        ]
    }
}

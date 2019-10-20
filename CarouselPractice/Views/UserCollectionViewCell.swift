//
//  RandomUserCollectionViewCell.swift
//  CarouselPractice
//
//  Created by Marc Jacques on 10/19/19.
//  Copyright © 2019 Marc Jacques. All rights reserved.
//

import UIKit

class UserCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var featuredImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
   
    let apiController = APIController()
    var users: [User]?

    
    func updateUI() {
        if let user = users {
            featuredImageView.image = apiController.users.
            userNameLabel.text = user.
        } else {
            featuredImageView.image = nil
            userNameLabel.text = nil
        }
    }
    
    
}

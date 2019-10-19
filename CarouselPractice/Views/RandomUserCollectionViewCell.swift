//
//  RandomUserCollectionViewCell.swift
//  CarouselPractice
//
//  Created by Marc Jacques on 10/19/19.
//  Copyright © 2019 Marc Jacques. All rights reserved.
//

import UIKit

class RandomUserCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var featuredImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
   
    let apiController =
        APIController()
    var user: [User] {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI() {
        if let user = user {
            featuredImageView.image =
        }
    }
    
    
}

//
//  UserViewController.swift
//  CarouselPractice
//
//  Created by Marc Jacques on 10/20/19.
//  Copyright © 2019 Marc Jacques. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var apiController: APIController!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
    // MARK: - UICollectionViewDataSource
extension UserViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableSupplementaryView(withReuseIdentifier: "UserCollectionViewCell", for: indexPath) as! UserCollectionViewCell
        let user = users[indexPath.item]
        
        cell.user = user
        return user
    }
}

//
//  FriendsCollectionViewController.swift
//  VKClient
//
//  Created by Gennady Stepanov on 27/12/2018.
//  Copyright © 2018 Gennady Stepanov. All rights reserved.
//

import UIKit

class FriendsCollectionViewController: UICollectionViewController {
  
  private let reuseIdentifier = "friendsImageReusableCollectionCell"
  var friendImageToDisplayPath = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: UICollectionViewDataSource
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      let image = UIImage(named: friendImageToDisplayPath)
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! FriendsCollectionViewCell
        // Configure the cell
        cell.friendsImageView.image = image
        return cell
    }
}

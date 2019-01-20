//
//  NewsTableViewCell.swift
//  VKClient
//
//  Created by Gennady Stepanov on 19/01/2019.
//  Copyright © 2019 Gennady Stepanov. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
  
  @IBOutlet weak var likeControl: LikeControl! {
    didSet{
      print("likeControl outlet didSet")
    }
  }
  
  @IBOutlet weak var newsCollectionView: UICollectionView! {
    didSet {
      print ("collectionView outlet didSet")
      newsCollectionView.dataSource = self
      newsCollectionView.delegate = self
      newsCollectionView.register(UINib.init(nibName: "NewsAdvancedCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "NewsAdvancedCollectionViewReusableCell")
      let flowLayout = UICollectionViewFlowLayout()
      flowLayout.scrollDirection = .horizontal
      flowLayout.itemSize = CGSize(width: 60, height: 44)
      flowLayout.minimumLineSpacing = 5
      flowLayout.minimumInteritemSpacing = 5
      newsCollectionView.collectionViewLayout = flowLayout
    }
  }
  
  override func awakeFromNib() {
        super.awakeFromNib()
    
    //debugging
    print("tableViewCell awake from nib OK")
    //likeControl.like()
    }
  
  //Mark: Setup collectionView
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 5
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    print ("collectionView dequeueReusableCell called")
   let cell = newsCollectionView.dequeueReusableCell(withReuseIdentifier: "NewsAdvancedCollectionViewReusableCell", for: indexPath) as! NewsAdvancedCollectionViewCell
    return cell
  }
    
}
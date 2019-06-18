//
//  ViewController.swift
//  RecordFoodApp
//
//  Created by User09 on 2019/6/18.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var photoArray: [String] = ["01", "02", "03"]
    
    let fullScreenSize = UIScreen.main.bounds.size
    
    @IBOutlet weak var collectionLayout: UICollectionViewFlowLayout!
    @IBOutlet weak var collectionViewControl: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionLayout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        collectionLayout.itemSize = CGSize(width: fullScreenSize.width/2-10, height: 100)
        collectionLayout.minimumLineSpacing = 5
        collectionLayout.scrollDirection = .vertical
        collectionLayout.headerReferenceSize = CGSize( width: fullScreenSize.width, height: 40)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return photoArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! MyCustomerCollectionViewCell
        cell.MyCellImagineView.image = UIImage(named: photoArray[indexPath.row])
        
        return cell
    }
}


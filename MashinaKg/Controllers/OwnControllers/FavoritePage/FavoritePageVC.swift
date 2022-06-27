//
//  favoritePageVC.swift
//  MashinaKg
//
//  Created by user on 7/6/22.
//

import UIKit

class FavoritePageVC: UIViewController {

    @IBOutlet weak var favoriteCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        favoriteCollectionView.dataSource = self
        favoriteCollectionView.delegate = self
        favoriteCollectionView.collectionViewLayout = UICollectionViewFlowLayout()

    }
}

extension FavoritePageVC: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return favoriteCars.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarsCollectionViewCell", for: indexPath) as! CarsCollectionViewCell
        
        cell.favoriteCarsImage.image = UIImage(named: favoriteCars[indexPath.row].image)
//        cell.favoriteCarsImage.layer.cornerRadius = 50
        cell.favoriteCarsName.text = favoriteCars[indexPath.row].name
        cell.favoriteCarsPrice.text = favoriteCars[indexPath.row].price
        return cell
    }
}

extension FavoritePageVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 180, height: 300)
    }
}

extension FavoritePageVC: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(favoriteCars[indexPath.row].name)
    }
}
    

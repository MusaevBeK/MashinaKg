//
//  MainPageVCCellTableViewCell.swift
//  MashinaKg
//
//  Created by user on 9/6/22.
//

import UIKit

class MainPageVCCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var name: UILabel!

    @IBOutlet weak var year: UILabel!
    
    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var priceConvert: UILabel!
    
    @IBOutlet weak var carsImage: UIImageView!
    
    @IBOutlet weak var carsType: UILabel!
    
    @IBOutlet weak var engineSize: UILabel!
    
    @IBOutlet weak var privod: UILabel!
    
    @IBOutlet weak var akkp: UILabel!
    
    @IBOutlet weak var wheel: UILabel!
    
    @IBOutlet weak var city: UILabel!
    
    @IBAction func sendInFavorite(_ sender: Any) {
//        favoriteCars.append(FavoriteCarsModel(image: , name: <#T##String#>, price: <#T##String#>))
        
    }
    
}

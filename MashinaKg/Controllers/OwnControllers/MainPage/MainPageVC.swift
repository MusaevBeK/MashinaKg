//
//  ViewController.swift
//  MashinaKg
//
//  Created by user on 4/6/22.
//

import UIKit
import SideMenu

class MainPageVC: UIViewController {

    @IBOutlet weak var mainTableView: UITableView!
        
    var menu: SideMenuNavigationController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainTableViewSettings()
        sideMenuSettings()
    }
    
    @IBAction func didTapMenu() {
        present(menu!, animated: true)
    }
    
    func mainTableViewSettings() {
        mainTableView?.dataSource = self
        mainTableView?.delegate = self
    }
    
    func sideMenuSettings() {
        menu = SideMenuNavigationController(rootViewController: MenuListController())
        menu?.leftSide = true
        
        SideMenuManager.default.leftMenuNavigationController = menu
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
    }
    
    
}

extension MainPageVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = mainTableView?.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MainPageVCCellTableViewCell
        
        // Вызываю cars из CarsModel
        let carsForCell = cars[indexPath.row]
        
        cell.name?.text = carsForCell.name
        cell.year?.text = carsForCell.year
        cell.price?.text = carsForCell.price
        cell.priceConvert?.text = carsForCell.priceConvert
        cell.carsImage?.image = UIImage(named: carsForCell.carsImage)
        cell.carsType.text = carsForCell.carsType
        cell.engineSize.text = carsForCell.engineSize
//        cell.privod.text = carsForCell.privod
        cell.akkp.text = carsForCell.akkp
        cell.wheel.text = carsForCell.wheel
        cell.city.text = carsForCell.city
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 190
        
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let transfer = storyboard?.instantiateViewController(identifier: "favorite") as? FavoritePageVC
//
//        transfer.
//    }
    
    
}


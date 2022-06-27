//
//  MenuListController.swift
//  MashinaKg
//
//  Created by user on 11/6/22.
//

import Foundation
import UIKit

class MenuListController: UITableViewController {
    
    enum CarsOptions: String, CaseIterable {
        
        case cars = "Легковые"
        case airplanes = "Коммерческие"
        case trucks = "Спецтехника"
        case moto = "Мото"
        case spareParts = "Запчасти"
        case services = "Услуги"
        case settings = "Настройки"
        
        var imageName: String {
            switch self {
            case .cars:
                return "car"
            case .airplanes:
                return "airplane"
            case .trucks:
                return "star"
            case .moto:
                return "bicycle"
            case .spareParts:
                return "gearshape.fill"
            case .services:
                return "message"
            case .settings:
                return "gear"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .darkGray
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "go")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CarsOptions.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "go", for: indexPath)
        
        cell.textLabel?.text = CarsOptions.allCases[indexPath.row].rawValue
        cell.imageView?.image = UIImage(systemName: CarsOptions.allCases[indexPath.row].imageName)
        cell.imageView?.tintColor = .white
        cell.textLabel?.textColor = .white
        cell.backgroundColor = .darkGray
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let data = storyboard?.instantiateViewController(withIdentifier: "SmallCars") as? SmallCars {
            self.navigationController?.pushViewController(data, animated: true)
        } else {
            self.navigationController?.pushViewController(BigCars(), animated: true)
        }
    }
}

//
//  MenuViewController.swift
//  vedu
//
//  Created by Роман Лабунский on 21/06/2020.
//  Copyright © 2020 Роман Лабунский. All rights reserved.
//


import UIKit

enum MenuType: Int {
    case home
    case camera
    case logOut
}

class MenuViewController: UITableViewController {
        
    var didTapMenuType: ((MenuType) -> Void)?
    

    override func viewDidLoad() {
        super.viewDidLoad()
            
        // Do any additional setup after loading the view.
    }
        
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let menuType = MenuType(rawValue: indexPath.row) else { return }
        dismiss(animated: true) { [weak self] in
            print("Dismissing: \(menuType)")
            self?.didTapMenuType?(menuType)
        }
    }
}

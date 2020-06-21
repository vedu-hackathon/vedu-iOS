//
//  ViewController.swift
//  vedu
//
//  Created by Роман Лабунский on 20/06/2020.
//  Copyright © 2020 Роман Лабунский. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var statBtn: UIButton!
    
     private var galleryCollectionView = GalleryCollectionView()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.addSubview(galleryCollectionView)
        
        galleryCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        galleryCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        galleryCollectionView.topAnchor.constraint(equalTo: statBtn.bottomAnchor, constant: 10).isActive = true
        galleryCollectionView.heightAnchor.constraint(equalToConstant: 350).isActive = true
        
        galleryCollectionView.set(cells: DiplomaModel.fetchSushi())
    }


}

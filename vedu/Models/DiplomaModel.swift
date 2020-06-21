//
//  DiplomaModel.swift
//  vedu
//
//  Created by Роман Лабунский on 20/06/2020.
//  Copyright © 2020 Роман Лабунский. All rights reserved.
//

import Foundation

import UIKit

struct DiplomaModel {
    var mainImage: UIImage
    var sushiName: String
    var smallDescription: String
    var cost: Int
    
    static func fetchSushi() -> [DiplomaModel] {
        let firstItem = DiplomaModel(mainImage: UIImage(named: "diploma")!,
                               sushiName: "Jengibre",
                               smallDescription: "Original Japanese",
                               cost: 8)
        let secondItem = DiplomaModel(mainImage: UIImage(named: "diploma")!,
                                    sushiName: "Caviar",
                                    smallDescription: "Original Japanese",
                                    cost: 10)
        let thirdItem = DiplomaModel(mainImage: UIImage(named: "diploma")!,
                                   sushiName: "Camaron",
                                   smallDescription: "Original Japanese",
                                   cost: 7)
        
        let fouthItem = DiplomaModel(mainImage: UIImage(named: "diploma")!,
                                   sushiName: "Salmon",
                                   smallDescription: "Original Japanese",
                                   cost: 12)
        
        let five = DiplomaModel(mainImage: UIImage(named: "diploma")!,
                                   sushiName: "Jengibre",
                                   smallDescription: "Original Japanese",
                                   cost: 8)
        let six = DiplomaModel(mainImage: UIImage(named: "diploma")!,
                                    sushiName: "Caviar",
                                    smallDescription: "Original Japanese",
                                    cost: 10)
        let seven = DiplomaModel(mainImage: UIImage(named: "diploma")!,
                                   sushiName: "Camaron",
                                   smallDescription: "Original Japanese",
                                   cost: 7)
        
        let eight = DiplomaModel(mainImage: UIImage(named: "diploma")!,
                                   sushiName: "Salmon",
                                   smallDescription: "Original Japanese",
                                   cost: 12)
        
        
        return [firstItem, secondItem, thirdItem, fouthItem, five, six, seven, eight]
    }
}

struct Constants {
    static let leftDistanceToView: CGFloat = 40
    static let rightDistanceToView: CGFloat = 40
    static let galleryMinimumLineSpacing: CGFloat = 10
    static let galleryItemWidth = (UIScreen.main.bounds.width - Constants.leftDistanceToView - Constants.rightDistanceToView - (Constants.galleryMinimumLineSpacing / 2)) / 2
}


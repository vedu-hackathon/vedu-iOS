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
    var name: String
    var description: String
    
    static func fetchDiploma() -> [DiplomaModel] {
        let firstItem = DiplomaModel(mainImage: UIImage(named: "diploma")!,
                               name: "Диплом",
                               description: "Бакалавр")
        let secondItem = DiplomaModel(mainImage: UIImage(named: "diploma")!,
                                    name: "Диплом",
                                    description: "Магистр")
        let thirdItem = DiplomaModel(mainImage: UIImage(named: "diploma")!,
                                   name: "Сертификат",
                                   description: "IT")
        
        let fouthItem = DiplomaModel(mainImage: UIImage(named: "diploma")!,
                                   name: "Сертификат",
                                   description: "AR ang VR")
        
        let five = DiplomaModel(mainImage: UIImage(named: "diploma")!,
                                   name: "Сертификат",
                                   description: "Цифрофой прорыв")
        
        
        return [firstItem, secondItem, thirdItem, fouthItem, five]
    }
}

struct Constants {
    static let leftDistanceToView: CGFloat = 40
    static let rightDistanceToView: CGFloat = 40
    static let galleryMinimumLineSpacing: CGFloat = 10
    static let galleryItemWidth = (UIScreen.main.bounds.width - Constants.leftDistanceToView - Constants.rightDistanceToView - (Constants.galleryMinimumLineSpacing / 2)) / 2
}


//
//  Food.swift
//  TetHoliday
//
//  Created by Ngoc on 9/13/16.
//  Copyright © 2016 GDG. All rights reserved.
//

import Foundation
import UIKit

class Food{
    
    var name: String?
    var photo: UIImage?
    var photoLink: String?
    var recipe: String?
    
    
    init(name: String, photo: String, recipe: String){
        self.name = name
        self.photo = UIImage(named: ("\(photo).jpg"))
        self.photoLink = photo
        self.recipe = recipe
    }

}

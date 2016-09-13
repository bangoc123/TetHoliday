//
//  CustomCell.swift
//  TetHoliday
//
//  Created by Ngoc on 9/13/16.
//  Copyright © 2016 GDG. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    var nameLabel: UILabel!
    var imageViewCell: UIImageView!
    var kCellWidth: CGFloat = 400
    var kCellHeight: CGFloat = 200
    var kLabelWidth: CGFloat = 200
    var kLabelHeight: CGFloat = 50
    
    
    
    func addSubviews() {
        if(imageViewCell == nil){
            imageViewCell = UIImageView(frame: CGRectMake(0 , 0, kCellWidth, kCellHeight))
            contentView.addSubview(imageViewCell)
        }
        
        if(nameLabel == nil){
            nameLabel = UILabel(frame: CGRectMake(10,10, kLabelWidth, kLabelHeight))
            nameLabel.textAlignment = .Left
            nameLabel.textColor = UIColor.redColor()
            nameLabel.font = UIFont.boldSystemFontOfSize(25)
            contentView.addSubview(nameLabel)
            
        }
    }
    
    
}

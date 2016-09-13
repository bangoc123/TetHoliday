//
//  DataManager.swift
//  TetHoliday
//
//  Created by Ngoc on 9/13/16.
//  Copyright © 2016 GDG. All rights reserved.
//

import Foundation

class DataMagager{
    
    var data = NSMutableArray()
    
    class var sharedInstance: DataMagager{
        struct Static {
            static var onceToken: dispatch_once_t = 0
            static var instance: DataMagager? = nil
        }
        
        dispatch_once(&Static.onceToken){
            
            Static.instance = DataMagager()
            let filePath = NSBundle.mainBundle().pathForResource("Foods", ofType: "plist")
            let raw = NSDictionary(contentsOfFile: filePath!)
            let temp = NSMutableArray()
            
            for item in raw!{
                let food = Food(name: item.value.valueForKey("name") as! String, photo: item.value.valueForKey("photo") as! String, recipe: item.value.valueForKey("recipe") as! String)
                
                temp.addObject(food)
            }
            
            Static.instance?.data = NSMutableArray(array: temp)
            
        }
        return Static.instance!
    }
    
    
}
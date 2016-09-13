//
//  DetailVC.swift
//  TetHoliday
//
//  Created by Ngoc on 9/13/16.
//  Copyright © 2016 GDG. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    var detailVCFood: Food?
    
    @IBOutlet weak var img_view: UIImageView!
    
    @IBOutlet weak var tv_recipe: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        img_view.image = UIImage(named: "\(detailVCFood!.photoLink!).jpg")
        
        tv_recipe.text = detailVCFood?.recipe

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

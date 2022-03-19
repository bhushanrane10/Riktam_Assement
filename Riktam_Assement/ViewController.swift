//
//  ViewController.swift
//  Riktam_Assement
//
//  Created by Bhushan Satish Rane on 19/03/22.
//  Copyright © 2022 Bhushan Satish Rane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func viewAllMethod(_ sender: Any) {
        
    }
    @IBAction func foodSearchMethod(_ sender: Any) {
        NavigateToFoodRestaurantVC("Food")
    }
    
    @IBAction func restaurantSearchMethod(_ sender: Any) {
        NavigateToFoodRestaurantVC("Restaurant")
    }
    func NavigateToFoodRestaurantVC(_ headerTitle:String) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let foodRastaurantVC = storyboard.instantiateViewController(withIdentifier: "FoodRestaurantsVC") as! FoodRestaurantsVC
        foodRastaurantVC.title = headerTitle
        self.navigationController?.pushViewController(foodRastaurantVC, animated: true)
    }
}


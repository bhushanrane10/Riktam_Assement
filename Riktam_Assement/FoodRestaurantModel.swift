//
//  FoodRestaurantModel.swift
//  Riktam_Assement
//
//  Created by Bhushan Satish Rane on 19/03/22.
//  Copyright © 2022 Bhushan Satish Rane. All rights reserved.
//

import UIKit

class FoodRestaurantModel: Decodable {
    
    
    var rating:Float?
    var price:String?
    var phone:String?
    var id:String?
    var alias:String?
    var isClosed:Bool?
    var categories:[String:String]?
    var imageUrl:String?
    var coordinates:[String:Double]?
    var location:[String:String]?
}

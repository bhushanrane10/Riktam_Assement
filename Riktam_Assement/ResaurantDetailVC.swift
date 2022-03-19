//
//  ResaurantDetailVCViewController.swift
//  Riktam_Assement
//
//  Created by Bhushan Satish Rane on 19/03/22.
//  Copyright © 2022 Bhushan Satish Rane. All rights reserved.
//

import UIKit

class ResaurantDetailVC: UIViewController {
    
    var restaurant:FoodRestaurantModel?
    
    @IBOutlet weak var lblContactDetail: UILabel!
    @IBOutlet weak var lblLocationDetail: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblRestoName: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var ratingStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Restaurant detail"
        setDetail()
    }
    func setDetail() {
        if let imageUrl = restaurant?.imageUrl
        {
            let data = try? Data(contentsOf: URL(string: imageUrl)!)
            DispatchQueue.main.async {
                self.imageView.image = UIImage(data: data!)
            }
        }
        lblPrice.text = lblPrice.text! + (restaurant?.price)!
        lblLocationDetail.text = (restaurant?.location!["address1"])!+" , "+(restaurant?.location!["zip_code"])!
        lblRestoName.text = restaurant?.alias
        lblContactDetail.text = lblContactDetail.text!+" "+(restaurant?.phone)!
        setRating()
    }
    func setRating(){
        for btn in ratingStackView.subviews where btn is UIButton{
            let button = btn as! UIButton
            if (Float(button.tag) < (restaurant?.rating)!) {
                button.setImage(UIImage(systemName: "star.fill"), for: .normal)
            }
        }
    }
}

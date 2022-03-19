//
//  JsonModel.swift
//  Riktam_Assement
//
//  Created by Bhushan Satish Rane on 19/03/22.
//  Copyright © 2022 Bhushan Satish Rane. All rights reserved.
//

import UIKit

class JsonModel: NSObject {
    static var shared = JsonModel()
    
    let jsonData = """
    [
          {
              "rating": 3,
              "price": "$",
              "phone": "+14152520800",
              "id": "E8RJkjfdcwgtyoPMjQ_Olg",
              "alias": "Coffee & Tea",
              "isClosed": false,
              "categories":
              {
                "alias": "coffee",
                "title": "Coffee & Tea"
              },
              "imageUrl": "http://s3-media2.fl.yelpcdn.com/bphoto/MmgtASP3l_t4tPCL1iAsCg/o.jpg",
              "coordinates": {
                "latitude": 18.4865,
                "longitude": 73.7968
              },
              "location": {
                "city": "Pune",
                "country": "IND",
                "address2": "",
                "address3": "",
                "state": "MH",
                "address1": "Warje, Pune",
                "zip_code": "411058"
              }
            },
          {
            "rating": 4,
            "price": "$",
            "phone": "+14152520800",
            "id": "E8RJkjfdcwgtyoPMjQ_Olg",
            "alias": "Veg food",
            "isClosed": false,
            "categories":
            {
              "alias": "veg",
              "title": "Veg food"
            },
            "imageUrl": "http://s3-media2.fl.yelpcdn.com/bphoto/MmgtASP3l_t4tPCL1iAsCg/o.jpg",
            "coordinates": {
              "latitude": 18.5016,
              "longitude": 73.8150
            },
            "location": {
              "city": "Pune",
              "country": "IND",
              "address2": "",
              "address3": "",
              "state": "MH",
              "address1": "Warje, Pune",
              "zip_code": "411058"
            }
          },
              {
                "rating": 5,
                "price": "$",
                "phone": "+14152520800",
                "id": "E8RJkjfdcwgtyoPMjQ_Olg",
                "alias": "Nonveg food",
                "isClosed": false,
                "categories":
                {
                  "alias": "nonveg",
                  "title": "Nonveg food"
                },
                "imageUrl": "http://s3-media2.fl.yelpcdn.com/bphoto/MmgtASP3l_t4tPCL1iAsCg/o.jpg",
                "coordinates": {
                  "latitude": 18.4913,
                  "longitude": 73.7925
                },
                "location": {
                  "city": "Pune",
                  "country": "IND",
                  "address2": "",
                  "address3": "",
                  "state": "MH",
                  "address1": "Warje, Pune",
                  "zip_code": "411058"
                }
              },
              {
                "rating": 4,
                "price": "$",
                "phone": "+14152520800",
                "id": "E8RJkjfdcwgtyoPMjQ_Olg",
                "alias": "Family resto",
                "isClosed": false,
                "categories":
                {
                  "alias": "Veg",
                  "title": "Veg food"
                },
                "imageUrl": "http://s3-media2.fl.yelpcdn.com/bphoto/MmgtASP3l_t4tPCL1iAsCg/o.jpg",
                "coordinates": {
                  "latitude": 18.6011,
                  "longitude": 73.7641
                },
                "location": {
                  "city": "Pune",
                  "country": "IND",
                  "address2": "",
                  "address3": "",
                  "state": "MH",
                  "address1": "Wakad, Pune",
                  "zip_code": "411057"
                }
              },
              {
                "rating": 3,
                "price": "$",
                "phone": "+14152520800",
                "id": "E8RJkjfdcwgtyoPMjQ_Olg",
                "alias": "Family together resto",
                "isClosed": false,
                "categories":
                {
                  "alias": "nonveg",
                  "title": "Nonveg food"
                },
                "imageUrl": "http://s3-media2.fl.yelpcdn.com/bphoto/MmgtASP3l_t4tPCL1iAsCg/o.jpg",
                "coordinates": {
                  "latitude": 18.5902,
                  "longitude": 73.7728
                },
                "location": {
                  "city": "Pune",
                  "country": "IND",
                  "address2": "",
                  "address3": "",
                  "state": "MH",
                  "address1": "Wakad, Pune",
                  "zip_code": "411057"
                }
              },
            {
              "rating": 3,
              "price": "$",
              "phone": "+14152520800",
              "id": "E8RJkjfdcwgtyoPMjQ_Olg",
              "alias": "Nonveg",
              "isClosed": false,
              "categories":
              {
                "alias": "nonveg",
                "title": "Nonveg food"
              },
              "imageUrl": "http://s3-media2.fl.yelpcdn.com/bphoto/MmgtASP3l_t4tPCL1iAsCg/o.jpg",
              "coordinates": {
                "latitude": 18.5902,
                "longitude": 73.7728
              },
              "location": {
                "city": "Pune",
                "country": "IND",
                "address2": "",
                "address3": "",
                "state": "MH",
                "address1": "Wakad, Pune",
                "zip_code": "411057"
              }
            },
            {
              "rating": 3,
              "price": "$",
              "phone": "+14152520800",
              "id": "E8RJkjfdcwgtyoPMjQ_Olg",
              "alias": "Family together resto",
              "isClosed": false,
              "categories":
              {
                "alias": "nonveg",
                "title": "Nonveg food"
              },
              "imageUrl": "http://s3-media2.fl.yelpcdn.com/bphoto/MmgtASP3l_t4tPCL1iAsCg/o.jpg",
              "coordinates": {
                "latitude": 18.5902,
                "longitude": 73.7728
              },
              "location": {
                "city": "Pune",
                "country": "IND",
                "address2": "",
                "address3": "",
                "state": "MH",
                "address1": "warje, Pune",
                "zip_code": "411057"
              }
            },
            {
              "rating": 3,
              "price": "$",
              "phone": "+14152520800",
              "id": "E8RJkjfdcwgtyoPMjQ_Olg",
              "alias": "Nonveg",
              "isClosed": false,
              "categories":
              {
                "alias": "nonveg",
                "title": "Nonveg food"
              },
              "imageUrl": "http://s3-media2.fl.yelpcdn.com/bphoto/MmgtASP3l_t4tPCL1iAsCg/o.jpg",
              "coordinates": {
                "latitude": 18.5902,
                "longitude": 73.7728
              },
              "location": {
                "city": "Pune",
                "country": "IND",
                "address2": "",
                "address3": "",
                "state": "MH",
                "address1": "warje, Pune",
                "zip_code": "411057"
              }
            }
    ]
    """.data(using: .utf8)!
    
    func APICall(completionHandler:@escaping ([FoodRestaurantModel]?, Error?) -> Void)  {
        let decoder = JSONDecoder()
        do{
            let result = try decoder.decode([FoodRestaurantModel].self, from: jsonData)
            completionHandler(result,nil)
        }
        catch{
            completionHandler(nil, error)
            print("Error : \(error.localizedDescription)")
        }
    }
}

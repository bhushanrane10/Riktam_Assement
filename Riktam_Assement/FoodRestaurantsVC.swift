//
//  FoodRestaurantsVC.swift
//  Riktam_Assement
//
//  Created by Bhushan Satish Rane on 19/03/22.
//  Copyright © 2022 Bhushan Satish Rane. All rights reserved.
//

import UIKit

class FoodRestaurantsVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var responseData:[FoodRestaurantModel]?
    var filterData:[FoodRestaurantModel]?
    var tableViewArr:[FoodRestaurantModel]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        sendRequest()
    }
    @IBAction func locationFilter(_ sender: Any) {
        tableViewArr?.removeAll()
        
        tableViewArr = filterData!.filter({ foodrestaurent -> Bool in
             return(foodrestaurent.location!["address1"]!.lowercased().contains("wakad".lowercased()))
        })
        tableView.reloadData()
    }
    @IBAction func categoryFilter(_ sender: Any) {
        tableViewArr?.removeAll()
        for item in filterData!{
            if item.categories!["alias"]?.lowercased() == "nonveg".lowercased(){
                tableViewArr?.append(item)
            }
        }
        tableView.reloadData()
    }
    func sendRequest() {
        JsonModel.shared.APICall { (foodRestaurantModels,error)  in
            guard let response = foodRestaurantModels else{
                let alertView = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                alertView.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                self.present(alertView, animated: true, completion: nil)
                return
            }
            self.responseData = response
        }
    }
    
}
extension FoodRestaurantsVC:UISearchBarDelegate,UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableViewArr?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath)
        cell.textLabel?.text = (tableViewArr![indexPath.row]).alias! + ", " + (tableViewArr![indexPath.row]).location!["address1"]!
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let resaurantDetailVC = storyboard.instantiateViewController(withIdentifier: "ResaurantDetailVC") as! ResaurantDetailVC
        resaurantDetailVC.restaurant = tableViewArr![indexPath.row]
        self.navigationController?.pushViewController(resaurantDetailVC, animated: true)
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("textDidChange")
        guard let searchArray = responseData else{
            return
        }
        filterData?.removeAll()
        tableViewArr?.removeAll()
        filterData = searchArray.filter({ foodrestaurent -> Bool in
            return (foodrestaurent.alias!.lowercased().contains(searchText.lowercased()))
        })
        tableViewArr = filterData
        tableView.reloadData()
    }
}

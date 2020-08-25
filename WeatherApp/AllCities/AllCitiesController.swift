//
//  AllCitiesController.swift
//  WeatherApp
//
//  Created by Rayen on 24.08.2020.
//  Copyright © 2020 Rayen. All rights reserved.
//

import UIKit

class AllCitiesController: UITableViewController {
    
    var cities = ["Georgia",
                  "Kirgizistan",
                  "Liverpool",
                  "Machu picchu",
                  "Moscow",
                  "Seatle",
                  "St.Petersburg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CityCell", for: indexPath) as! AllCitiesCell
        let city = cities[indexPath.row]
        cell.cityName.text = city
        
        return cell
    }
}

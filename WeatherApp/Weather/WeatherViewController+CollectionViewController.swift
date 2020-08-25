//
//  WeatherViewController+CollectionViewController.swift
//  WeatherApp
//
//  Created by Rayen on 24.08.2020.
//  Copyright © 2020 Rayen. All rights reserved.
//

import UIKit

extension WeatherViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    // MARK: UICollectionViewDataSource
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WeatherCell", for: indexPath) as! WeatherCell
        cell.weather.text = "247°F"
        cell.time.text = "25.08.2020 18:12"
        
        return cell
    }
}

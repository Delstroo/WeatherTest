//
//  WeatherViewController.swift
//  Weather
//
//  Created by Delstun McCray on 2/25/22.
//

import UIKit
import CoreLocation

class WeatherViewController: UIViewController {

    //MARK: - Landing Pad
    let coordinator = LocationCoordinator()

    //MARK: - Outlets
    @IBOutlet var locationDataLabel: UILabel!
    @IBOutlet var changeLocationButton: UIButton!
    
    
    //MARK: - Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        let coordinate = coordinator.currentLocation?.coordinate
        locationDataLabel.text = "\(coordinate?.latitude) \(coordinate?.longitude)"
        
    }
    
    //MARK: - Actions
    
}


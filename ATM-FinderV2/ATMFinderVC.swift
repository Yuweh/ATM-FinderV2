//
//  ATMFinderVC.swift
//  ATM-FinderV2
//
//  Created by Francis Jemuel Bergonia on 21/12/2017.
//  Copyright © 2017 Francis Jemuel Bergonia. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces
import GooglePlacePicker

class ATMFinderVC: UIViewController {
    
    // Add a pair of UILabels in Interface Builder, and connect the outlets to these variables.
    
    @IBOutlet weak var nameLabel: UILabel!
    //@IBOutlet var nameLabel: UILabel!
    
    @IBOutlet weak var addressLabel: UILabel!
    //@IBOutlet var addressLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pickPlace(_ sender: UIButton) {
    // Add a UIButton in Interface Builder, and connect the action to this function.
    let center = CLLocationCoordinate2D(latitude: 37.788204, longitude: -122.411937)
    let northEast = CLLocationCoordinate2D(latitude: center.latitude + 0.001, longitude: center.longitude + 0.001)
    let southWest = CLLocationCoordinate2D(latitude: center.latitude - 0.001, longitude: center.longitude - 0.001)
    let viewport = GMSCoordinateBounds(coordinate: northEast, coordinate: southWest)
    let config = GMSPlacePickerConfig(viewport: viewport)
    let placePicker = GMSPlacePicker(config: config)
    
    placePicker.pickPlace(callback: {(place, error) -> Void in
    if let error = error {
    print("Pick Place error: \(error.localizedDescription)")
    return
    }
    
    if let place = place {
    self.nameLabel.text = place.name
    self.addressLabel.text = place.formattedAddress?.components(separatedBy: ", ")
    .joined(separator: "\n")
    } else {
    self.nameLabel.text = "No place selected"
    self.addressLabel.text = ""
    }
    })
    }
}

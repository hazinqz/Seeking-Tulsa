//
//  ViewController.swift
//  Seeking Tulsa
//
//  Created by P.M. Student on 12/6/19.
//  Copyright © 2019 Gauge Parker. All rights reserved.
//

import UIKit
import MapKit

class MainVC: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    @IBAction func mapTypeChanged(_ sender: Any) {
     
                  mapView.mapType = MKMapType.init(rawValue: UInt((sender as AnyObject).selectedSegmentIndex)) ?? .standard
          
          
          }
    

    override func viewDidLoad() {
        super.viewDidLoad()
 
        
        let initialLocation = CLLocation(latitude: 36.153980, longitude: -95.992775)

            let regionRadius: CLLocationDistance = 1000
            func centerMapOnLocation(location: CLLocation) {
                let coordinateRegoin = MKCoordinateRegion.init(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
                mapView.setRegion(coordinateRegoin, animated: true)

        }
        
         centerMapOnLocation(location: initialLocation)
    
    

}

}
    


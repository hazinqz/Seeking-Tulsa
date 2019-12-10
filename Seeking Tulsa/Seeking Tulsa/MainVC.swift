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
    

    override func viewDidLoad() {
        super.viewDidLoad()
 
        
        let initialLocation = CLLocation(latitude: 36.153980, longitude: -95.992775)

            let regionRadius: CLLocationDistance = 1000
            func centerMapOnLocation(location: CLLocation) {
                let coordinateRegoin = MKCoordinateRegion.init(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
                mapView.setRegion(coordinateRegoin, animated: true)

                centerMapOnLocation(location: initialLocation)

        }
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showMap),
                                               name: NSNotification.Name("ShowProfile"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showSettings),
                                               name: NSNotification.Name("ShowSettings"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showSignIn),
                                               name: NSNotification.Name("ShowSignIn"),
                                               object: nil)
    }
    
    @objc func showMap() {
        performSegue(withIdentifier: "ShowMap", sender: nil)
    }
    
    @objc func showSettings() {
        performSegue(withIdentifier: "ShowSettings", sender: nil)
    }
    
    @objc func showSignIn() {
        performSegue(withIdentifier: "ShowSignIn", sender: nil)
    }
    
    
    @IBAction func onMoreTapped() {
        print("TOGGLE SIDE MENU")
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }
  
    @IBAction func mapTypeChanged(_ sender: Any) {
   
                mapView.mapType = MKMapType.init(rawValue: UInt((sender as AnyObject).selectedSegmentIndex)) ?? .standard
        
        
        }
    
    

}

  
    


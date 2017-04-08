//
//  MapViewController.swift
//  SB In Need
//
//  Created by Jared Fitton on 4/8/17.
//  Copyright © 2017 JaredFitton. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var goToUserLocationButton: UIButton!
    
    var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView = MKMapView(frame: self.view.frame)
        mapView.delegate = self
        
        let location = CLLocationCoordinate2D(latitude: 34.4293457, longitude: -119.6965677)
        let region = MKCoordinateRegionMakeWithDistance(location, 2000, 2000)
        mapView.setRegion(region, animated: true)
     
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        
        self.view.addSubview(mapView)
        
        goToUserLocationButton.layer.cornerRadius = 8
        self.view.bringSubview(toFront: goToUserLocationButton)
    }

    @IBAction func goToUserLocation(_ sender: UIButton) {
        let regionSpan = mapView.region.span
        let location = mapView.userLocation.coordinate
        let userLocation = MKCoordinateRegion(center: location, span: regionSpan)
        mapView.setRegion(userLocation, animated: true)
    }
    
    func mapView(_ mapView: MKMapView, regionDidChangeAnimated animated: Bool) {
        let user = mapView.userLocation.coordinate
        let center = mapView.centerCoordinate
        let buffer = 0.000005
        
        if center.longitude <= user.longitude + buffer && center.longitude >= user.longitude - buffer && center.latitude <= user.latitude + buffer && user.latitude >= center.latitude - buffer {
            goToUserLocationButton.imageView?.image = #imageLiteral(resourceName: "AtUserLocationIcon")
        } else {
            goToUserLocationButton.imageView?.image = #imageLiteral(resourceName: "NotAtUserLocationIcon")
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

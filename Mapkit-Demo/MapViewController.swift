//
//  MapViewController.swift
//  Mapkit-Demo
//
//  Created by Paige Plander on 4/7/17.
//  Copyright © 2017 Paige Plander. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapview: MKMapView!
    let annotation = MKPointAnnotation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mapview.delegate = self
        
        annotation.coordinate = CLLocationCoordinate2D(latitude: 37.8719, longitude: -122.2585)
        mapview.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        performSegue(withIdentifier: "goToNextView", sender: view)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SecondViewController {
            destination.annotationView = sender as? MKAnnotationView
        }
    }

}


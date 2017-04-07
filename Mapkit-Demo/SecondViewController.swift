//
//  SecondViewController.swift
//  Mapkit-Demo
//
//  Created by Paige Plander on 4/7/17.
//  Copyright © 2017 Paige Plander. All rights reserved.
//

import UIKit
import MapKit

class SecondViewController: UIViewController {

    var annotationView: MKAnnotationView?
    
    @IBOutlet weak var coordinateLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let annotationView = annotationView {
            
            let latitudeString: String?  = String(describing: Int((annotationView.annotation?.coordinate.latitude)!))
            let longitudeString: String? = String(describing: Int((annotationView.annotation?.coordinate.longitude)!))
            
            
            if let latitudeString = latitudeString, let longitudeString = longitudeString {
                coordinateLabel.text =  latitudeString + " / " + longitudeString
            }
            
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

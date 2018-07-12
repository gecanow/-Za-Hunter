//
//  LocationDetailsViewController.swift
//  'Za Hunter
//
//  Created by Necanow on 7/11/18.
//  Copyright © 2018 EcaKnowGames. All rights reserved.
//

import UIKit
import MapKit

class LocationDetailsViewController: UIViewController {
    
    var selectedMapItem = MKMapItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(selectedMapItem.name!)
    }
    
}

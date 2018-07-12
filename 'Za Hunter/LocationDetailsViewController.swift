//
//  LocationDetailsViewController.swift
//  'Za Hunter
//
//  Created by Necanow on 7/11/18.
//  Copyright © 2018 EcaKnowGames. All rights reserved.
//

import UIKit
import MapKit
import SafariServices

class LocationDetailsViewController: UIViewController {
    
    var selectedMapItem = MKMapItem()
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var phone: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        name.text = selectedMapItem.placemark.name
        var add = selectedMapItem.placemark.subThoroughfare! + " "
        add += selectedMapItem.placemark.thoroughfare! + "\n"
        add += selectedMapItem.placemark.locality! + ", "
        add += selectedMapItem.placemark.administrativeArea! + " "
        add += selectedMapItem.placemark.postalCode!
        address.text = add
        phone.text = selectedMapItem.phoneNumber
    }
    
    @IBAction func onTappedDirections(_ sender: Any) {
        let launchOptions = [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeWalking]
        MKMapItem.openMaps(with: [selectedMapItem], launchOptions: launchOptions)
    }
    
    @IBAction func onTappedWebsite(_ sender: Any) {
        if let url = selectedMapItem.url {
            present(SFSafariViewController(url: url), animated: true)
        }
    }
}

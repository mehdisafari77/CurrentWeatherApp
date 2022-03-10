//
//  MainVC.swift
//  CurrentWeatherApp
//
//  Created by Ivan Ramirez on 2/3/22.
//

import UIKit
import CoreLocation

class MainVC: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var mainDescriptionLabel: UILabel!
    @IBOutlet weak var subDescriptionLabel: UILabel!
    @IBOutlet weak var minTempLabel: UILabel!
    @IBOutlet weak var maxTempLabel: UILabel!

    private let locationManager = CLLocationManager()


    override func viewDidLoad() {
        super.viewDidLoad()

        //TODO: - add background UI

        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = 10
        locationManager.startUpdatingLocation()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)


    }
    
    //MARK: - Weather



    /**
     Updates the labels with the weather details
     - weatherInfo  this is taken from your weather info model

     ## Important Note##
     The user needs internet in order for this function to run
     */
    func updateViews(weatherInfo: WeatherInfo) {
        Dispatch.DispatchQueue.main.async {
            //            self.cityLabel.text = "City: \(weatherInfo.name)"
            //            self.tempLabel.text = String(weatherInfo.main.temp)
            //            self.mainDescriptionLabel.text = weatherInfo.weather.first?.main ?? "No data found"
            //            self.subDescriptionLabel.text = weatherInfo.weather.first?.description ?? "No data found"
            //            self.maxTempLabel.text = "Max: \(weatherInfo.main.tempMax)"
            //            self.minTempLabel.text = "Min: \(weatherInfo.main.tempMin)"
        }
    }

    //MARK: - Location

    // Permissions

    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        switch manager.authorizationStatus {
        case .notDetermined:
            manager.requestAlwaysAuthorization()
        case .authorizedAlways, .authorizedWhenInUse:
            break
        case .denied, .restricted:
            break
        default:
            break
        }
        manager.startUpdatingLocation()
    }

    // Get the updated location of the user
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {

        guard let locationValue: CLLocationCoordinate2D = manager.location?.coordinate else { return }

    }

}

//
//  ViewController.swift
//  M3Weather
//
//  Created by White, James B. on 2/5/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alertMessage: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var weatherImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let weather = "Snowy"
        let temperature = 48
        
//        if weather == "Sunny" {
//            weatherImageView.image = UIImage(named: "sunny")
//        } else if weather == "Rainy" {
//            weatherImageView.image = UIImage(named: "rainy")
//        } else if weather == "Cloudy" {
//            weatherImageView.image = UIImage(named: "cloudy")
//        } else if weather == "Snowy" {
//            weatherImageView.image = UIImage(named: "snowy")
//        } else {
//            weatherImageView.image = UIImage(named: "weather")
//        }
        
        switch weather{
            case "Sunny":
            statusLabel.text = "Sunny"
            weatherImageView.image = UIImage(named: "sunny")
        case "Rainy":
            statusLabel.text = "Rainy"
            weatherImageView.image = UIImage(named: "rainy")
        case "Cloudy":
            statusLabel.text = "Cloudy"
            weatherImageView.image = UIImage(named: "cloudy")
        case "Snowy":
            statusLabel.text = "Snowy"
            weatherImageView.image = UIImage(named: "snowy")
        default:
            statusLabel.text = "Unknown"
            weatherImageView.image = UIImage(named: "weather")
        }
        switch temperature{
        case ...19:
            alertMessage.text = "Extreme cold"
        case 20...49:
            alertMessage.text = "It's cold outside!"
        case 50...68:
            alertMessage.text = "Cool and mild!"
        case 69...85:
            alertMessage.text = "Warm!"
        case 85...:
            alertMessage.text = "Heat alert!"
        default:
            alertMessage.text = "Unknown"
        
        
        }
        
        temperatureLabel.text = String(temperature) + " F"
    }


}


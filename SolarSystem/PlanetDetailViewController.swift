//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Robert Shepperd on 10/13/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {
    
    @IBOutlet weak var diameterLabel: UILabel!
    @IBOutlet weak var dayLengthLabel: UILabel!
    @IBOutlet weak var kilosLabel: UILabel!
    @IBOutlet weak var planetImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

           }

    
    func updateWithPlanet (planet:Planet) {
        
        title = planet.name
        diameterLabel.text = "\(planet.diameter)"
        kilosLabel.text = "\(planet.millionKMsFromSun)"
        dayLengthLabel.text = "\(planet.dayLength)"
        planetImage.image = UIImage (named: planet.imageName)
        
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

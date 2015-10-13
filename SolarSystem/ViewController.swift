//
//  ViewController.swift
//  SolarSystem
//
//  Created by Caleb Hicks on 9/29/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCellWithIdentifier("planetCell", forIndexPath: indexPath)
        let planet = PlanetController.planets[indexPath.row]
        
        cell.textLabel?.text = planet.name
        cell.detailTextLabel?.text = "planet \(indexPath.row + 1)"
        cell.imageView?.contentMode = .ScaleAspectFill
        cell.imageView?.image = UIImage (named: planet.imageName)
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return PlanetController.planets.count
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "planetSeg" {
            if let detailVC = segue.destinationViewController as? PlanetDetailViewController {
                
                _ = detailVC.view
                
                let indexPath = self.tableView.indexPathForSelectedRow
                
                if let selectedRow = indexPath?.row {
                    let planet = PlanetController.planets[selectedRow]
                    detailVC.updateWithPlanet(planet)
                }
                
            }
        }
    }
    
}

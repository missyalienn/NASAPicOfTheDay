//
//  PlanetTableViewController.swift
//  NASA_API
//
//  Created by Missy Allan on 2/14/17.
//  Copyright © 2017 Missy Allan. All rights reserved.
//

import Foundation
import UIKit

class PlanetTableViewController: UITableViewController {
    
    
    let planetCellIndentifer: String = "PlanetCell"

    var planets: [Planet] = []
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        generatePlanetInfo()
    }
    
    func generatePlanetInfo() {
       
        func generatePlanetInfo() {
            
            let mercury = Planet(name: "Mercury", numberOfMoons: 0, numberOfDays: 87.96, facts: ["Mercury is an airless world, not unlike our moon.",
                                                                                              "Mercury is the closest planet to the sun.",
                                                                                              "Thirteen times a century Mercury can be observed from the Earth passing across the face of the Sun."])
            
            let venus = Planet(name: "Venus", numberOfMoons: 0, numberOfDays: 224.7, facts: ["Venus is the hottest planet. ",
                                                                                          "Venus is the closets planet to Earth.",
                                                                                          "One day on Venus is equivalent to 117 days of Earth!"])
            
            let earth = Planet(name: "Earth", numberOfMoons: 1, numberOfDays: 365.27, facts: ["Earth is the only planet that has an atmosphere containing 21 percent oxygen.",
                                                                                           "Earth is the only planet that has liquid water on its surface.",
                                                                                           "Earth is the only planet in the solar system that has life that we know of." ])
            
            let mars = Planet(name: "Mars", numberOfMoons: 2, numberOfDays: 687.0, facts: ["Mars and Earth have approximately the same landmass.",
                                                                                        "Mars is home to the tallest mountain in the solar system.",
                                                                                        "Pieces of Mars have fallen onto Earth. Whoa!"])
            
            let jupiter = Planet(name: "Jupiter", numberOfMoons: 67, numberOfDays: 4333.0, facts: ["Jupiter is the stormiest planet in the Solar System.",
                                                                                                "Jupiter is about 483 million miles, or 777 million kilometres from the Sun.",
                                                                                                "Jupiter has the shortest day of all the planets."
                ])
            
            
            let saturn = Planet(name: "Saturn", numberOfMoons: 18, numberOfDays: 10759.0, facts: ["Saturn's rings were first seen by Galileo in 1610 through a telescope.",
                                                                                               "Saturn has the second largest moon in the solar system, Titan.",
                                                                                               "Saturn's rings may actually be composed of ice."  ])
            
            let uranus = Planet(name: "Uranus", numberOfMoons: 27, numberOfDays: 30687.0, facts: ["Uranus was the first planet discovered by telescope.",
                                                                                                  "Uranus spins lying on its side, perhaps due to a large collision early in its formation.",
                                                                                                    "Uranus takes 84 Earth years to go around the sun!"])
            
            let neptune = Planet(name: "Neptune", numberOfMoons: 13, numberOfDays: 60148.35, facts: ["Neptune is the third largest planet in the solar system.",
                                                                                                     "The discovery of Neptune was one of the most exciting discoveries in Astronomy.",
                                                                                                     "Neptune is one of the four gas giants and is composed only of gas."])

            planets.append(mercury)
            planets.append(venus)
            planets.append(earth)
            planets.append(mars)
            planets.append(jupiter)
            planets.append(saturn)
            planets.append(uranus)
            planets.append(neptune)
            
            
        }
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planets.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? FactTableViewController,
            let indexPath = tableView.indexPathForSelectedRow {
            dest.planet = planets[indexPath.row]
            
        }
    }
       
    }
    


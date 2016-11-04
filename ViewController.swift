//
//  ViewController.swift
//  NASA_API
//
//  Created by Missy Allan on 11/3/16.
//  Copyright © 2016 Missy Allan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var staticTitle: UILabel!
    
    @IBOutlet weak var sourceLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var imageTitle: UILabel!
    
    @IBOutlet weak var imageExplanation: UITextView!
    
    @IBOutlet weak var picOfTheDay: UIImageView!

    @IBOutlet weak var moreSpace: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
      NASAAPIClient.getDataFromAPI { (data) in
     
        NASAAPIClient.downloadImage(at: data["url"]!, completion: { (success, image) in
            
            if success == true {
                print("got image data from URL")
                DispatchQueue.main.async {
                    self.picOfTheDay.image = image
                    self.dateLabel.text = "\(data["date"]!)"
                    self.imageTitle.text = "\(data["title"]!)"
                    self.imageExplanation.text = "\(data["explanation"]!)"
                   
                }
               
            } else {
                print ("Error getting image")
            }
    
            
        })
        
        }
    
    }



}

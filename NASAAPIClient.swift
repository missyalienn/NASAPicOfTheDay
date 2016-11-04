//
//  NASAAPIClient.swift
//  NASA_API
//
//  Created by Missy Allan on 11/3/16.
//  Copyright © 2016 Missy Allan. All rights reserved.
//

import Foundation
import UIKit


class NASAAPIClient {
    
   // var image: UIImage!
    
    typealias JSON = [String :  String]
    
    static func getDataFromAPI(with completion: @escaping (JSON) -> ()) {
        
        
        let urlString = "https://api.nasa.gov/planetary/apod?\(Secrets.apiKey)"
        let url = URL(string: urlString)
        guard let unwrappedURL = url else {return}
        
        let session = URLSession.shared
        let task = session.dataTask(with: unwrappedURL) { (data, response, error) in
            
            print("Start")
            guard let unwrappedData = data else {return}
            
            do {
                let responseJSON = try JSONSerialization.jsonObject(with: unwrappedData, options: []) as! JSON
               print(responseJSON["explanation"]!)
                completion(responseJSON)
                print("got data")
                
            } catch {
        
                print(error)
                
            }
            
        }
        task.resume()
        
    }
    
    
    
    
    
    
   static func downloadImage(at urlString: String, completion: @escaping (Bool, UIImage?) -> ()) {
        
       // let urlString = "http://apod.nasa.gov/apod/image/1611/NGC253hagerC1024.JPG"
        let url = URL(string: urlString)
        guard let unwrappedURL = url else {return}
    
        let request = URLRequest(url: unwrappedURL)
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: request) { data, response, error in
            
            guard let data = data, let image = UIImage(data: data) else { completion(false, nil); return }
    
           completion(true, image)
        
        }
        task.resume()
    }

}









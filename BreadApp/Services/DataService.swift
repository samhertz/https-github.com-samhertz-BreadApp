//
//  DataService.swift
//  BreadApp
//
//  Created by Samuel Hertz on 2/21/22.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Product] {
        
        // Parse local json file
        
        // Get a URL path to the json file
        let pathString = Bundle.main.path(forResource: "Breads", ofType: "json")
        
        //check if path string is not nil, otherwise...
        guard pathString != nil else {
            return [Product]()
        }
        
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            
            // Create a data object
            let data = try Data(contentsOf: url)
            
        // Decode the data with a json decoder
            let decoder = JSONDecoder()
        
            do {
            
                let breadData = try decoder.decode([Product].self, from: data)
                
                // Add the unique IDs
                for r in breadData {
                    r.uuid = UUID()
                }
                // Return the recipes
                return breadData
                
                }
            
            catch {
                print(error)
                }
        
        }
        catch {
            print(error)
            
        }

        return [Product]()
    }
    
}

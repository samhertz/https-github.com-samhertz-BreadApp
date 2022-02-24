//
//  BreadModel.swift
//  BreadApp
//
//  Created by Samuel Hertz on 2/21/22.
//

import Foundation
import SwiftUI

class ProductModel: ObservableObject {
    
    @Published var products = [Product]()
    
    init() {
        
        self.products = DataService.getLocalData()
    }
    
}

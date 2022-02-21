//
//  BreadModel.swift
//  BreadApp
//
//  Created by Samuel Hertz on 2/21/22.
//

import Foundation
import SwiftUI

class BreadModel: ObservableObject {
    
    @Published var breads = [Bread]()
    
    init() {
        
        self.breads = DataService.getLocalData()
    }
    
}

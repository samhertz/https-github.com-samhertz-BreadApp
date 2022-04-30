//
//  BreadHighlights.swift
//  BreadApp
//
//  Created by Samuel Hertz on 2/21/22.
//

import SwiftUI

struct ProductHighlights: View {
    
    var allHighlights = ""
    
    init(highlights: [String]) {
        
        for index in 0..<highlights.count {
            //if this is the last item, do not add a comma
            
            if index == highlights.count - 1 {
                allHighlights += highlights[index]
            }
            else {
                allHighlights += highlights[index] + ", "
            }
        }
        
    }
    
    
    var body: some View {
        Text(allHighlights)
    }
}

struct BreadHighlights_Previews: PreviewProvider {
    static var previews: some View {
        ProductHighlights(highlights: ["test1", "test2"])
    }
}

//
//  BreadDetailView.swift
//  BreadApp
//
//  Created by Samuel Hertz on 2/21/22.
//

import SwiftUI

struct BreadDetailView: View {
    
    var bread:Bread
    
    var body: some View {
        
        ScrollView {
            
        VStack(alignment: .leading) {
            
            // MARK: Recipe Image
            Image(bread.name)
                .resizable()
                .scaledToFill()
            
            // MARK: Recipe Title
            Text(bread.name)
                .bold()
                .padding(.top, 20)
                .padding(.leading)
                .font(.largeTitle)

            // MARK: Ingredients
            VStack(alignment: .leading) {
            Text("Ingredients")
                .font(.headline)
                .padding([.bottom,.top], 5)
                
            }
            .padding(.horizontal)
            
            // MARK: Divider

            }
        }
    }
}

struct BreadDetailView_Previews: PreviewProvider {
    static var previews: some View {
        //Create Dummy Recipe and pass into detail view so that we can see a preview
        
        let model = BreadModel()
        
        BreadDetailView(bread: model.breads[0])
    }
}

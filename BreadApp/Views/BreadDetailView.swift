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
            
                // MARK: Bread Image
                Image(bread.name)
                    .resizable()
                    .scaledToFill()
                
                // MARK: Bread Brazilian Title
                Text(bread.brazilName)
                    .bold()
                    .padding(.top, 20)
                    .padding(.leading)
                    .font(.largeTitle)
                
                // MARK: Bread English Title
                Text("\(bread.name)")
                    .padding(.leading)
                    .font(.title)
                
                // MARK: Bread Description
                Text("Description: \(bread.description)")
                    .padding(.leading)
                    .font(.headline)
                    .padding([.bottom,.top], 5)
                
                // MARK: Bread Nutrition
                Text("Serving Size: \(bread.servingSize) Oz")
                    .padding(.leading)
                
                Text("Total Servings: \(bread.totalServings)")
                    .padding(.leading)
                
                Text("Calories: \(bread.calories)")
                    .padding(.leading)
                
                Text("Carbohydrates: \(bread.carbohydrates)")
                    .padding(.leading)
                
                Text("Protein: \(bread.protein)")
                    .padding(.leading)


                // MARK: Ingredients
                VStack(alignment: .leading) {
                Text("Ingredients")
                    .font(.headline)
                    .padding([.top], 5)
                    
                    ForEach (bread.ingredients, id: \.self) { item in
                        Text("• " + item)
                    }
                }
                .padding(.horizontal)
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

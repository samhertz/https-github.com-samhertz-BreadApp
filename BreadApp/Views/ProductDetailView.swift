//
//  BreadDetailView.swift
//  BreadApp
//
//  Created by Samuel Hertz on 2/21/22.
//

import SwiftUI

struct ProductDetailView: View {
    
    var product:Product
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading) {
            
                // MARK: Bread Image
                Image(product.name)
                    .resizable()
                    .scaledToFill()
                
                // MARK: Bread Brazilian Title
                Text(product.brazilName)
                    .bold()
                    .padding(.top, 20)
                    .padding(.leading)
                    .font(.largeTitle)
                
                // MARK: Bread English Title
                Text("\(product.name)")
                    .padding(.leading)
                    .font(.title)
                
                // MARK: Bread Description
                Text("Description: \(product.description)")
                    .padding(.leading)
                    .font(.headline)
                    .padding([.bottom,.top], 5)
                
                // MARK: Bread Nutrition
                Text("Serving Size: \(product.servingSize) Oz")
                    .padding(.leading)
                
                Text("Total Servings: \(product.totalServings)")
                    .padding(.leading)
                
                Text("Calories: \(product.calories)")
                    .padding(.leading)
                
                Text("Carbohydrates: \(product.carbohydrates)")
                    .padding(.leading)
                
                Text("Protein: \(product.protein)")
                    .padding(.leading)


                // MARK: Ingredients
                VStack(alignment: .leading) {
                Text("Ingredients")
                    .font(.headline)
                    .padding([.top], 5)
                    
                    ForEach (product.ingredients, id: \.self) { item in
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
        
        let model = ProductModel()
        
        ProductDetailView(product: model.products[0])
    }
}

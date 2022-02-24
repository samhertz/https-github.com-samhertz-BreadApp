//
//  ProductCard.swift
//  BreadApp
//
//  Created by Samuel Hertz on 2/22/22.
//

import SwiftUI

struct ProductCard: View {
    
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack (alignment: .bottom){
                Image(product.name)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                
                VStack (alignment: .leading){
                    Text(product.name)
                        .bold()
                    
                    Text("$\(String(format: "%.2f", product.cost))")
                        .font(.caption)
                }
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 1.0, saturation: 0.0, brightness: 0.944)/*@END_MENU_TOKEN@*/)
                .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
        .shadow(radius: 3)
            
            Button {
                cartManager.addToCart(product: product)
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(Color.black)
                    .cornerRadius(50)
                    .padding()
            }

            
        }
        
        
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = ProductModel()
        
        ProductCard(product: model.products[0])
            .environmentObject(CartManager())
    }
}

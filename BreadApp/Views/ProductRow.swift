//
//  ProductRow.swift
//  BreadApp
//
//  Created by Samuel Hertz on 2/24/22.
//

import SwiftUI

struct ProductRow: View {
    
    @EnvironmentObject var cartManager: CartManager
    @State var product: Product
    
    var body: some View {
        
        HStack(spacing: 10) {
            
            Image(product.name)
                .resizable()
                .scaledToFill()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 75)
                .cornerRadius(10)
            
            VStack (alignment: .leading, spacing: 10){
                Text(product.name)
                    .bold()
                    .multilineTextAlignment(.leading)
                    .lineLimit(3)
                
                Text("$\(String(format: "%.2f", product.cost))")
            }
            Spacer()
            
            Image(systemName: "plus")
                .padding(.vertical)
                .padding(.horizontal, 3)
                .onTapGesture {
                    cartManager.addToCart(product: product)
                }
                
            
            if let count = cartManager.itemCount[product.name] {
                Text(String(count))
            }
                    
            
            Image(systemName: "minus")
                .padding(.vertical)
                .padding(.horizontal, 3)
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
                
            
            
        }
        .foregroundColor(.black)
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = ProductModel()
        
        ProductRow(product: model.products[1])
            .environmentObject(CartManager())
    }
}

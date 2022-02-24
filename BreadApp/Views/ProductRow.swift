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
        
        HStack(spacing: 20) {
            
            Image(product.name)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .cornerRadius(10)
            
            VStack (alignment: .leading, spacing: 10){
                Text(product.name)
                    .bold()
                
                Text("$\(String(format: "%.2f", product.cost))")
            }
            Spacer()
            
            Image(systemName: "trash")
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
            
            
        }
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

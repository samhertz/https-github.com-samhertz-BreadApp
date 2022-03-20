//
//  GridView.swift
//  BreadApp
//
//  Created by Samuel Hertz on 2/23/22.
//

import SwiftUI

struct GridView: View {
    
    @StateObject var cartManager = CartManager()
    var model = ProductModel()
    var columns = [GridItem(.adaptive(minimum: 160),spacing: 20)]
    
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                LazyVGrid(columns: columns, spacing: 20) {
                    
                    ForEach(model.products, id: \.uuid) { product in
                        
                        NavigationLink {
                            ProductDetailView(product: product)
                        } label: {
                            ProductCard(product: product)
                                .environmentObject(cartManager)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Pão Nosso Menu"))
            .toolbar {
                NavigationLink {
                    ProductCartView()
                        .environmentObject(cartManager)
                } label: {
                    CartButton(numberOfProducts: cartManager.products.count)
                }
            }
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}

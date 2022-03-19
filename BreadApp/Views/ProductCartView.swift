//
//  BreadCartView.swift
//  BreadApp
//
//  Created by Samuel Hertz on 2/21/22.
//

import SwiftUI

struct ProductCartView: View {
    
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView {
            
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.uuid) { product in
                    ProductRow(product: product)
                }
                
                HStack {
                    Text("Your cart total is")
                    Spacer()
                    Text("$\(String(format: "%.2f", cartManager.total))")
                }
                .padding()
                
                PaymentButton(action: {})
                    .padding()
                
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 3)
                        .frame(height: 40)
                    
                    Button {
                        // TODO: Add Pickup Info
                    } label: {
                        Text("Local Pickup or Delivery")
                            .foregroundColor(Color.white)
                    }
                }
                .padding(.horizontal)
                

            }
            else {
                Text("Your Cart is Empty")
            }
            
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

struct BreadCartView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCartView()
            .environmentObject(CartManager())
    }
}

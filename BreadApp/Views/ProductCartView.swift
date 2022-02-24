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
            Text("Your Cart is Empty")
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

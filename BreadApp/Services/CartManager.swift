//
//  CartManager.swift
//  BreadApp
//
//  Created by Samuel Hertz on 2/23/22.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Double = 0
    
    func addToCart(product: Product) {
        products.append(product)
        total += product.cost
    }
    
    func removeFromCart(product: Product) {
        products = products.filter{$0.uuid != product.uuid}
        total -= product.cost
    }
}

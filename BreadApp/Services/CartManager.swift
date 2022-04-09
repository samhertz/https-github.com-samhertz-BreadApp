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
    @Published public var itemCount: [String: Int] = [:]
    
    
    func addToCart(product: Product) {
        
        if itemCount[product.name] == nil {
            itemCount[product.name] = 1
            products.append(product)
        }
        else {
            itemCount[product.name]! += 1
        }
        
        total += product.cost
    }
    
    func removeFromCart(product: Product) {
        
        if itemCount[product.name] ?? 0 <= 1 {
            
            for i in 0...products.count-1 {
                if products[i].name == product.name {
                    products.remove(at: i)
                    break
                }
            }
            
            itemCount[product.name] = nil
            
            
        }
        
        else if itemCount[product.name] != nil {
            itemCount[product.name]! -= 1
        }
        
        
//        else {
//            products = products.filter{$0.uuid != product.uuid}
//
//        }
        
        if total > 0 {
            
            total -= product.cost
        }
        else {
            products.removeAll()
        }
    }
}

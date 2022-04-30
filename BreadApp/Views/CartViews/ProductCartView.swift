//
//  BreadCartView.swift
//  BreadApp
//
//  Created by Samuel Hertz on 2/21/22.
//

import SwiftUI

struct ProductCartView: View {
    
    @State var NumberToMessage = 9492096477
    
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView {
            
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.uuid) { product in
//                    ProductRow(product: product)
                    
                    NavigationLink {
                        ProductDetailView(product: product)
                    } label: {
                        ProductRow(product: product)
                            .environmentObject(cartManager)
                    }
                }
                
                HStack {
                    Text("Your cart total is")
                    Spacer()
                    Text("$\(String(format: "%.2f", cartManager.total))")
                }
                .padding()
                
                // TODO: Apple Pay
               // PaymentButton(action: {})
                   // .padding()
                
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 3)
                        .frame(height: 40)
                    
                    Button {
                        // TODO: Add Pickup Info
                        sendMessage()
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
    
    func sendMessage() {
        let sms: String = "sms:+1\(NumberToMessage)&body=Hello, I would like to order the following items! \n \nItems to Order: \n\(cartManager.itemCount) \n \nTotal: \(String(format: "%.2f", cartManager.total))"
        let strURL: String = sms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        UIApplication.shared.open(URL.init(string: strURL)!, options: [:], completionHandler: nil)
    }
}

struct BreadCartView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCartView()
            .environmentObject(CartManager())
    }
}

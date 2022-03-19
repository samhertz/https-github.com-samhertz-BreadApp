//
//  BreadListView.swift
//  BreadApp
//
//  Created by Samuel Hertz on 2/21/22.
//

import SwiftUI

struct ProductListView: View {
    
    @EnvironmentObject var model:ProductModel
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .leading) {
                Text("Items Made Daily")
                    .bold()
                    .padding(.top, 40)
                    .font(.largeTitle)
                
                ScrollView {
                    LazyVStack (alignment: .leading) {
                        ForEach(model.products) { b in
                            
                            NavigationLink {
                                ProductDetailView(product: b)
                            } label: {
                                
                                // MARK: Row item
                                HStack(spacing: 20.0) {
                                    Image(b.name)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 100, height: 100, alignment: .center)
                                        .clipped()
                                        .cornerRadius(5)
                                    VStack (alignment: .leading){
                                        Text(b.brazilName)
                                            .bold()
                                            .font(.title2)
                                            .foregroundColor(.black)
                                        Text(b.name)
                                            .bold()
                                            .foregroundColor(.black)
                                        ProductHighlights(highlights: b.keywords)
                                        
                                    }
                                    Spacer()
                                    Image(systemName: "cart.badge.plus")
                                        .padding(.trailing)
                                }
                            }
                        }
                    }
                }
            }.navigationBarHidden(true)
                .padding(.leading)
        }
    }
}

struct BreadListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView()
            .environmentObject(ProductModel())
    }
}

//
//  StoryView.swift
//  BreadApp
//
//  Created by Samuel Hertz on 2/21/22.
//

import SwiftUI

struct StoryView: View {
    
    @State var tabSelectionIndex = 1
    
    var body: some View {
        
        ZStack {
            
            VStack {
                
                Text("Pão Nosso Story")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("Our Daily Bread")
                    .font(.callout)
                    .fontWeight(.medium)
                
                ScrollView {
                    
                    TabView (selection: $tabSelectionIndex){
                        Image("Bread1")
                            .resizable()
                            .scaledToFill()
                            .tag(1)
                        Image("Bread3")
                            .resizable()
                            .scaledToFit()
                            .tag(3)
                        Image("Bread4")
                            .resizable()
                            .scaledToFill()
                            .tag(4)
                        Image("Bread6")
                            .resizable()
                            .scaledToFit()
                            .tag(6)
                        Image("Bread7")
                            .resizable()
                            .scaledToFit()
                            .tag(7)
                        }
                    .frame(height: 250)
                    .cornerRadius(20)
                    .padding([.horizontal, .bottom])
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                    
                    Text(story1)
                        .font(.headline)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal)
                    
                    Image("Bread2")
                        .resizable()
                        .scaledToFit()
                        .padding()
                    
                    Text(story2)
                        .font(.headline)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal)
                    
                    Image("Bread5")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .padding()
                    
                    Text(story3)
                        .font(.headline)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal)
                    
                }
            }
        }
        .padding(.bottom, 17)
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}

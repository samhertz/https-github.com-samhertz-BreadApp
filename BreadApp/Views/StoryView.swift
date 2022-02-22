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
        
        VStack {
            
            TabView (selection: $tabSelectionIndex){
                Image("Bread1")
                    .resizable()
                    .scaledToFill()
                    .tag(1)
                Image("Bread2")
                    .resizable()
                    .scaledToFit()
                    .tag(2)
                Image("Bread3")
                    .resizable()
                    .scaledToFit()
                    .tag(3)
                Image("Bread4")
                    .resizable()
                    .scaledToFill()
                    .tag(4)
                Image("Bread5")
                    .resizable()
                    .scaledToFill()
                    .tag(5)
                }
            
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            
            
            Text("Pão Nosso Story")
                .font(.title)
            
            ScrollView {
                
                Text(story)
                    .padding(.horizontal)
            }
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}

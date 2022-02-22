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
                
                Text("The Pão Nosso vegan bread was created back in 2017 in the city of Rio de Janeiro, Brazil by Adriana Mello, co-founder the brand. The daily bread was originally crafted as a hobby to be shared between family and friends. Her bread received so much love from her friends that Adriana realized that her bread could become so much more. She decided to take a step forward and turn her home-made bread into her business. Now, Pão Nosso is a vegan handmade bread produced in South California, made from only organic ingredients without any preservatives. Pão nosso is a mix of unique ingredients that combine to give the customer a true experience of health and satisfaction. The founders of Pão Nosso bread believe that eating bread can be more than a satisfied stomach - it can be a whole experience of sharing moments, tastes and memories with family and friends. The bread supports your digestive system with its high quality ingredients and will make you reimagine the flavors that breads can have. Pão Nosso is excited to share a moment with you, so if you are interested in trying some bread, press continue down below!")
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

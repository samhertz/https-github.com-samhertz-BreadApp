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
                    .frame(height: 250)
                    .cornerRadius(20)
                    .padding([.horizontal, .bottom])
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                    
                    Text(story)
                        .font(.body)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal)
                    
                    ZStack {
                        
                        Rectangle()
                            .frame(width: 300, height: 50, alignment: .center)
                            
                            .cornerRadius(20)
                            .foregroundColor(Color.gray)
                        
                        Button {
                            GridView()
                        } label: {
                            Text("Continue")
                        }
                        .foregroundColor(.black)
                        .font(.title)

                    }
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

//
//  AppTabView.swift
//  BreadApp
//
//  Created by Samuel Hertz on 2/17/22.
//

import SwiftUI

struct AppTabView: View {
    
    @State var tabIndex = 1
    
    var body: some View {

            
        TabView(selection: $tabIndex) {
            
            StoryView()
                .tabItem {
                    VStack {
                        Image(systemName: "questionmark.circle")
                        Text("Story")
                    }
                }
                .tag(1)
            
            BreadListView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet.circle")
                        Text("List")
                    }
                }
                .tag(2)
            
            BreadCartView()
                .tabItem {
                    VStack {
                        Image(systemName: "cart")
                        Text("List")
                    }
                }
                .tag(3)
            
        }.environmentObject(BreadModel())
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}

//
//  ContentView.swift
//  Shared
//
//  Created by Justin Rhoads on 9/6/21.
//

import SwiftUI

struct MainView: View {
    @State var showingSheet = true;
    var body: some View {
        TabView {
            HealthView()
                .tabItem { Label("Health", systemImage: "figure.walk.circle.fill") }
            
            NutritionView()
                .tabItem { Label("Food", systemImage: "heart.text.square.fill") }
        }
        .sheet(isPresented: $showingSheet, content: {
            SignUpView()
        })
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainView()
//    }
//}

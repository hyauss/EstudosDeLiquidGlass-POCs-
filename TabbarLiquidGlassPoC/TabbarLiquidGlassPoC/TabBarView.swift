//
//  TestView.swift
//  TabbarLiquidGlassPoC
//
//  Created by Francisco Losada on 20/10/25.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house") {
                ContentView(nameView: "Home")
            }
            Tab("Alerts", systemImage: "bell") {
                ContentView(nameView: "Alerts")
            }
            Tab("Favorites", systemImage: "heart.fill") {
                ContentView(nameView: "Favorites")
            }
            //Indica que fica na posição isolada na direita
            Tab(role: .search) {
                SearchView()
            }
        }
        //Miniminiza a tabbar quando scrolla
        .tabBarMinimizeBehavior(.onScrollDown)
    }
}

#Preview {
    TabBarView()
}

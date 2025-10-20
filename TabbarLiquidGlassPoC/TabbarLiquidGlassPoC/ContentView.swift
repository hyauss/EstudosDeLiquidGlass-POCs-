//
//  ContentView.swift
//  TabbarLiquidGlassPoC
//
//  Created by Francisco Losada on 20/10/25.
//

import SwiftUI


struct ContentView: View {
    var nameView: String
    var body: some View {
        VStack{
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("This is the \(nameView) view.")
            List{
                ForEach(0..<60) { index in
                    Text("Item number \(index)")
                }
            }
        }
    }
}

#Preview {
    ContentView(nameView: "teste")
}

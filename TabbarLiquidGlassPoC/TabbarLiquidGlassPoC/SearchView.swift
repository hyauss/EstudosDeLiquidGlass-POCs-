//
//  SearchView.swift
//  TabbarLiquidGlassPoC
//
//  Created by Francisco Losada on 20/10/25.
//

import SwiftUI

struct SearchView: View {
    @State var searchText: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                //Caso nao tenha nada, chama uma view generica padrão do swift
               ContentUnavailableView("Search Tab", systemImage: "magnifyingglass")
            }
            .navigationTitle("Search")
        }
        //Indicação que é uma search bar
        .searchable(
            text: $searchText,
            placement: .automatic,
            prompt: "type here to search"
        )
    }
    
}

#Preview {
    SearchView()
}

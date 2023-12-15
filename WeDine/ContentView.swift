//
//  ContentView.swift
//  WeDine
//
//  Created by Hossein Sharifi on 15/12/2023.
//

import SwiftUI

struct ContentView: View {
    
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        List {
            ForEach(menu) { section in
                Section(section.name) {
                    ForEach(section.items) { item in
                        ItemRow(item: item)
                    }
                }
            }
        }
        .navigationTitle("Menu")
        .listStyle(.grouped)
    }
}

#Preview {
    ContentView()
}

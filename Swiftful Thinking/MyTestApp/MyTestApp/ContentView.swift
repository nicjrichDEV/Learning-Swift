//
//  ContentView.swift
//  MyTestApp
//
//  Created by Nick Richardson on 7/3/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedItem: String?
    
    var body: some View {
        NavigationSplitView {
            List(selection: $selectedItem) {
                Label("Home", systemImage: "house")
                    .tag("home")
            }
        } content: {
            Text("Content1")
                .frame(width: 200, height: 20)
        } detail: {
            if let selectedItem {
                Text("Selected \(selectedItem)")
            } else {
                Text("Select an item")
            }
        }
        .navigationTitle("Figstory")
    }
}

#Preview {
    ContentView()
        .frame(width: 800, height: 800)
}

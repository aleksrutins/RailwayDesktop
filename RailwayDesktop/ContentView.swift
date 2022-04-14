//
//  ContentView.swift
//  RailwayDesktop
//
//  Created by Student on 4/13/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: ProjectsView().background(.white)) {
                    Label("Projects", systemImage: "book")
                }
                Label("Settings", systemImage: "gear")
            }
            ProjectsView().background(.white)
        }
        .navigationTitle("Railway")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

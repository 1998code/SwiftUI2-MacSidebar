//
//  ContentView.swift
//  Shared
//
//  Created on 29/7/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
            Text("Welcome to SwiftUI 2.").padding()
        }.navigationTitle("Explore")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

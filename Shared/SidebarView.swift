//
//  SidebarView.swift
//  Demo Sidebar (macOS)
//
//  Created on 29/7/2020.
//

import SwiftUI

struct SidebarView: View {
    var body: some View {
        NavigationView {
            List {
                //Caption
                Text("Services")
                //Navigation links
                //Replace "ContentView" with your destination
                Group{
                    NavigationLink(destination: ContentView()) {
                        Label("Message", systemImage: "message")
                    }
                    NavigationLink(destination: ContentView()) {
                        Label("Weather", systemImage: "cloud.sun")
                    }
                    NavigationLink(destination: ContentView()) {
                        Label("Charge", systemImage: "bolt.car")
                    }
                    NavigationLink(destination: ContentView()) {
                        Label("HealthCare", systemImage: "pills")
                    }
                    NavigationLink(destination: ContentView()) {
                        Label("Ticket", systemImage: "ticket")
                    }
                    NavigationLink(destination: ContentView()) {
                        Label("Calculator", systemImage: "function")
                    }
                }
                //Add some space :)
                Spacer()
                Text("More")
                NavigationLink(destination: ContentView()) {
                    Label("Shortcut", systemImage: "option")
                }
                NavigationLink(destination: ContentView()) {
                    Label("Customize", systemImage: "slider.horizontal.3")
                }
                //Add some space again!
                Spacer()
                //Divider also looks great!
                Divider()
                NavigationLink(destination: ContentView()) {
                    Label("Settings", systemImage: "gear")
                }
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("Explore")
            //Set Sidebar Width (and height)
            .frame(minWidth: 150, idealWidth: 250, maxWidth: 300)
            .toolbar{
                //Toggle Sidebar Button
                ToolbarItem(placement: .navigation){
                    Button(action: toggleSidebar, label: {
                        Image(systemName: "sidebar.left")
                    })
                }
            }
            //Default View on Mac
            ContentView()
        }
    }
}

// Toggle Sidebar Function
func toggleSidebar() {
        NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
}

struct SidebarView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarView()
    }
}

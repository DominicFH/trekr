//
//  TrekrApp.swift
//  Trekr
//
//  Created by Dominic Harris on 19/06/2022.
//

import SwiftUI

@main
struct TrekrApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                NavigationView {
                    ContentView(location: Locations().primary)
                }
                .tabItem{
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
            }
        }
    }
}

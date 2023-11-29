//
//  LandmarkApp.swift
//  Landmark
//
//  Created by Shashwat Kashyap on 28/11/23.
//

import SwiftUI

@main
struct LandmarkApp: App {
    @State private var modelData = ModelData() //Why @State?

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}

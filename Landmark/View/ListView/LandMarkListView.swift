//
//  LandMarkListView.swift
//  Landmark
//
//  Created by Shashwat Kashyap on 29/11/23.
//

import SwiftUI

struct LandMarkListView: View {
    
    @Environment(ModelData.self) var modelData
    // It gets its value automatically, as long as the environment(_:) modifier has been applied to a parent.
    
    @State var showFavoritesOnly: Bool = false
    
    // Why you have to write it in a complicated way
    // Just to use this same guy in both cases
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        
        // To combine static and dynamic views in a list, or to combine two or more different groups of dynamic views, use the ForEach type instead of passing your collection of data to List.
        
        NavigationSplitView {
            // \.id :- Use id to uniquely identify
            // self can be used if hashable, also equatable? also identifiable?
            List {
                //Static view or Is it?
                Toggle(isOn: $showFavoritesOnly) { //$ is binding
                     Text("Favorites only")
                }
                
                // Dynamic view
                // For each is specially useful when combining dynamic views of multiple kind
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetailView(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select Landmark")
        }
        

    }
}

#Preview {
    LandMarkListView()
        .environment(ModelData())
}

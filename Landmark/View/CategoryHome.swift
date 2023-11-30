//
//  CategoryHome.swift
//  Landmark
//
//  Created by Shashwat Kashyap on 30/11/23.
//

import SwiftUI

struct CategoryHome: View {
    
    @Environment(ModelData.self) var modelData
    
    
    var body: some View {
        NavigationSplitView {
            List {
                
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Featured")
        } detail: {
            Text("Select A Landmark")
        }
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
    // No need to worry about retention of newly created object, it is retained by the environment mechanism
}

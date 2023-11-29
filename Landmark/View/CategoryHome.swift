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
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    Text(key)
                }
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

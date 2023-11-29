//
//  LandmarkRow.swift
//  Landmark
//
//  Created by Shashwat Kashyap on 29/11/23.
//

import SwiftUI

struct LandmarkRow: View {
    let landmark: Landmark
    
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.blue) // Why is tint not working?
            }
        }
    }
}

#Preview("Turtle Rock") {
    Group {
        LandmarkRow(landmark: ModelData().landmarks[0])
        LandmarkRow(landmark: ModelData().landmarks[1])
    }
   
}

//
//  LandmarkDetailView.swift
//  Landmark
//
//  Created by Shashwat Kashyap on 29/11/23.
//

import SwiftUI


// Always mark state properties as private because state should be specific to a view and its child views. ‼️‼️‼️‼️‼️‼️‼️

struct LandmarkDetailView: View {
    @Environment(ModelData.self) var modelData

    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    var landmark: Landmark
    var body: some View {
        
        // The fuck is bindable
        @Bindable var modelData = modelData
        ScrollView {
            
            
            MapView(coordinate: self.landmark.locationCoordinate)
                .frame(height: 250)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                
                
                HStack {
                       Text(landmark.name)
                           .font(.title)
                       FavouriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                
                
//                Text(landmark.name)
//                    .font(.title)
//                    .foregroundColor(Color.green)
                HStack {
                    Text(landmark.park)
//                        .font(.subheadline)
                    Spacer()
                    Text(landmark.city)
//                        .font(.subheadline)
                }
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline) // What is inline
    }
}

#Preview {
    LandmarkDetailView(landmark: ModelData().landmarks[0])
}



// Place a ForEach instance inside a List or other container type to create a dynamic list. ???????

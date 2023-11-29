//
//  CircleImage.swift
//  Landmark
//
//  Created by Shashwat Kashyap on 28/11/23.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        self.image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4.0)
            }.shadow(radius: 6)
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}

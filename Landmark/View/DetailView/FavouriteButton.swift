//
//  FavouriteButton.swift
//  Landmark
//
//  Created by Shashwat Kashyap on 29/11/23.
//

import SwiftUI

struct FavouriteButton: View {
    // Because you use a binding, changes made inside this view propagate back to the data source.
    @Binding var isSet: Bool
    var body: some View {
        Button {
            self.isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                   .labelStyle(.iconOnly)
                   .foregroundStyle(isSet ? .blue : .gray)
        }
    }
}

#Preview {
    FavouriteButton(isSet: .constant(true))
}

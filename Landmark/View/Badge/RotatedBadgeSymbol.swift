//
//  RotatedBadgeSymbol.swift
//  Landmark
//
//  Created by Shashwat Kashyap on 29/11/23.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
            .safeAreaPadding()
    }
}


#Preview {
    RotatedBadgeSymbol(angle: Angle(degrees: 5))
}

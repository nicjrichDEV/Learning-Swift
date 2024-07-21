//
//  ColorsBootcamp.swift
//  SwiftulThinkingBootcamp
//
//  Created by Nick Richardson on 7/3/24.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                .primary
//                Color(hex: "#80C1FF")
//                Color(uiColor: .secondarySystemBackground)
                Color("CustomColor")

            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 20)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: 24, y: 20)
    }
}

#Preview {
    ColorsBootcamp()
}

//
//  ShapesBootcamp.swift
//  SwiftulThinkingBootcamp
//
//  Created by Nick Richardson on 7/3/24.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 10, style: .continuous)
            .foregroundStyle(.green)
//            .fill(Color.green)
//            .foregroundStyle(.pink)
//            .stroke()
//            .stroke(Color.red, lineWidth: 30)
//            .stroke(.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [30]))
//            .trim(from: 0.2, to: 1.0)
//            .stroke(.purple, lineWidth: 50)
            .frame(width: 300, height: 200)
            
    }
}

#Preview {
    ShapesBootcamp()
}

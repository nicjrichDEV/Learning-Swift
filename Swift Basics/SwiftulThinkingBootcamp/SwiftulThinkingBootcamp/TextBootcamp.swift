//
//  TextBootcamp.swift
//  SwiftulThinkingBootcamp
//
//  Created by Nick Richardson on 7/3/24.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Pancakes 🥞")
//            .font(.body)
//            .fontWeight(.bold)
//            .bold()
//            .underline()
//            .underline(true, color: .red)
//            .italic()
//            .strikethrough(true, color: .green)
//            .font(.system(size: 24, weight: .semibold, design: .serif))
//            .baselineOffset(10.0)
//            .kerning(-1)
            .multilineTextAlignment(.leading)
            .foregroundStyle(.red)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1)
            .textCase(.uppercase)
            
            
    }
}

#Preview {
    TextBootcamp()
}

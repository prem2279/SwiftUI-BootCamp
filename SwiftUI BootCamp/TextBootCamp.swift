//
//  TextBootCamp.swift
//  SwiftUI BootCamp
//
//  Created by Prem Kumar Gundu on 6/15/26.
//

import SwiftUI

struct TextBootCamp: View {
    var body: some View {
        Text("Heelo world".capitalized)
            //.font(.title)
            //.fontWeight(.ultraLight)
            //.bold()
            //.underline()
            //.underline(true, color: Color.red)
            .italic()
            .strikethrough(true, color: Color.red)
            .font(.system(size: 24, weight: .semibold, design: .serif))
            .multilineTextAlignment(.leading)
            .baselineOffset(-20.0)
        // if it is -20, then it will give space above, if positive it will give space below
            //.kerning(10)
            .foregroundColor(.red)
            .frame(width: 200, height: 50, alignment: .center)
            .minimumScaleFactor(0.1)
    }
}

#Preview {
    TextBootCamp()
}

//
//  ShapesBootCamp.swift
//  SwiftUI BootCamp
//
//  Created by Prem Kumar Gundu on 6/15/26.
//

import SwiftUI

struct ShapesBootCamp: View {
    var body: some View {
        //Circle()
        //Ellipse()
        //Capsule(style: .continuous)
        //Rectangle()
        RoundedRectangle(cornerRadius: 10)
            //.fill(.red)
            //.foregroundColor(.blue)
            //.stroke()
            //.stroke(.blue)
            //.stroke(.blue, lineWidth: 30)
            //.stroke(.blue, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10, 20, 30]))
            //.trim(from: 0.5, to: 1.0)
            .stroke(.blue, lineWidth: 10)
            .frame(width: 200, height: 100, alignment: .center)
        
    }
}

#Preview {
    ShapesBootCamp()
}

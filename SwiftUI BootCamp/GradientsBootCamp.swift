//
//  GradientsBootCamp.swift
//  SwiftUI BootCamp
//
//  Created by Prem Kumar Gundu on 6/16/26.
//

import SwiftUI

struct GradientsBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                //Color.red
                //LinearGradient(colors: [Color.red,Color.black], startPoint: .topLeading, endPoint: .bottomTrailing)
                
                //RadialGradient(colors: [Color.red,Color.black], center: .center, startRadius: 20, endRadius: 200)
                AngularGradient(colors: [Color.red,Color.black], center: .center, startAngle: .degrees(45), endAngle: .degrees(100) )
            )
            .frame(width: 300, height: 200)
            
        //Image(systemName: "square.and.arrow.up.fill")
    }
}

#Preview {
    GradientsBootCamp()
}

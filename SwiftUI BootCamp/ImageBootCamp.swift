//
//  ImageBootCamp.swift
//  SwiftUI BootCamp
//
//  Created by Prem Kumar Gundu on 6/17/26.
//

import SwiftUI

struct ImageBootCamp: View {
    var body: some View {
        Image("1")
            .resizable()
            //.renderingMode(.template)
            .aspectRatio(contentMode: .fit)
            //.scaledToFit()
            .frame(width: 300, height: 300)
            //.clipped()
            //.cornerRadius(150)
            .clipShape(
                Circle()
                //RoundedRectangle(cornerRadius: 50.0)
                //Ellipse()
            )
            //.foregroundColor(.red)
    }
}

#Preview {
    ImageBootCamp()
}

//
//  SystemIconsBootCamp.swift
//  SwiftUI BootCamp
//
//  Created by Prem Kumar Gundu on 6/17/26.
//

import SwiftUI

struct SystemIconsBootCamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            //.font(.title) // these are system sizes, they will automatically change based on the iphone we use
            
            //.font(.system(size: 200))
            
            
            .resizable()
            //.aspectRatio(contentMode: .fit)
            
            .scaledToFill()
            //.scaledToFit()
            .frame(width: 300, height: 300)
            //.clipped()
            .foregroundColor(.red)
    }
}

#Preview {
    SystemIconsBootCamp()
}

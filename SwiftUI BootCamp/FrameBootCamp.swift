//
//  FrameBootCamp.swift
//  SwiftUI BootCamp
//
//  Created by Prem Kumar Gundu on 6/17/26.
//

import SwiftUI

struct FrameBootCamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.green)
            //.frame(width: 300,height: 300, alignment: .center)
            //.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            //.background(Color.red)
        
            .frame(height: 100)
            .background(Color.white)
            .frame(width: 300)
            .background(Color.purple)
            .frame(maxHeight: .infinity)
            .background(Color.pink)
            .frame(maxWidth: .infinity)
            .background(Color.black)
    }
}

#Preview {
    FrameBootCamp()
}

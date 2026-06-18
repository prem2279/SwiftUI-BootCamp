//
//  SafeAreaBootCamp.swift
//  SwiftUI BootCamp
//
//  Created by Prem Kumar Gundu on 6/18/26.
//

import SwiftUI

struct SafeAreaBootCamp: View{
    var body: some View{
        ZStack {
            Color.red
            
            VStack {
                Text("Hii")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.blue)
            
        }
        .background(.red)
        .ignoresSafeArea()
    }
}

#Preview {
    SafeAreaBootCamp()
}

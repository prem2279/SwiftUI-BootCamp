//
//  PaddingAndSpacerBootCamp.swift
//  SwiftUI BootCamp
//
//  Created by Prem Kumar Gundu on 6/17/26.
//

import SwiftUI

struct PaddingBootCamp: View{
    var body : some View {
        VStack(alignment: .center){
            Text("Hello EveryOne")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom)
            
            Text("This is Mulit line label, it sys, hello to every one, This is Padding and Spacing Boot Camp")
                .multilineTextAlignment(.center)
        }
        //.background(Color.red)
        .padding(20)
        .background(
            Color.white
                .cornerRadius(20)
                .shadow(color: Color.gray, radius: 20, x: 0, y: 10)
        )
        
        .padding(.horizontal)
        
    }
}

#Preview {
    PaddingBootCamp()
}

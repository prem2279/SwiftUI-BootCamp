//
//  AnimationTimingBootCamp.swift
//  SwiftUI BootCamp
//
//  Created by Prem Kumar Gundu on 6/19/26.
//

import SwiftUI

struct AnimationTimingBootCamp: View {
    @State var isAnimated: Bool = false
    let timing: Double = 10
    var body: some View {
        VStack{
            Button("Button"){
                isAnimated.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 300 : 50, height: 100)
                .animation(.spring(response: 1.0,
                                   dampingFraction: 0.8,
                                   blendDuration: 10.0), value: isAnimated)
                //.animation(.linear(duration: timing), value: isAnimated)
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimated ? 300 : 50, height: 100)
//                .animation(.easeIn(duration: timing), value: isAnimated)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimated ? 300 : 50, height: 100)
//                .animation(.easeInOut(duration: timing), value: isAnimated)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimated ? 300 : 50, height: 100)
//                .animation(.easeOut(duration: timing), value: isAnimated)
        }
    }
}

#Preview {
    AnimationTimingBootCamp()
}

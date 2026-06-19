//
//  AnimationsBootCamp.swift
//  SwiftUI BootCamp
//
//  Created by Prem Kumar Gundu on 6/19/26.
//

import SwiftUI

struct AnimationsBootCamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack{
            Button("Button"){
//                withAnimation(
//                    Animation
//                        .default
//                        //.delay(2)
//                        //.repeatCount(10, autoreverses: true)
//                        .repeatForever(autoreverses: true)
//                    , {
                    isAnimated.toggle()
                //})
                
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 100)
                .fill(isAnimated ? Color.red : Color.blue)
                .frame(
                    width: isAnimated ? 300 : 200,
                    height: isAnimated ? 300 : 200
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? -300 : 0)
                //.animation()
                .animation(Animation
                    .default
                    //.delay(2)
                    //.repeatCount(10, autoreverses: true)
                    .repeatForever(autoreverses: true), value: isAnimated)
                
        }
    }
}

#Preview {
    AnimationsBootCamp()
}

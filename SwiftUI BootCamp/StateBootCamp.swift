//
//  StateBootCamp.swift
//  SwiftUI BootCamp
//
//  Created by Prem Kumar Gundu on 6/18/26.
//

import SwiftUI

struct StateBootCamp: View{
    @State var backgroundColor = Color.red
    @State var title = "Click buton To Change BackGround"
    @State var count = 0
    
    var body: some View{
        
        
        ZStack(content: {
            backgroundColor
            
            VStack{
                Text(title)
                    .font(.title3)
                    .fontWeight(.bold)
                
                Text("Count: \(count)")
                    .font(.headline)
                
                HStack{
                    
                    
                    Button("Green"){
                        backgroundColor = Color.green
                        title = "Green Button Clicked"
                        count += 1
                    }
                    .padding()
                    .background(.green)
                    .cornerRadius(20)
                    .shadow(color:.white, radius: 10, y: 5)
                    
                    Button("Red"){
                        backgroundColor = Color.red
                        title = "Red Button Clicked"
                        count -= 1
                    }
                    .padding()
                    .background(.red)
                    .cornerRadius(20)
                    .shadow(color:.white, radius: 10, y: 5)
                }
            }
            .foregroundStyle(.white)
        })
    }
}

#Preview {
    StateBootCamp()
}

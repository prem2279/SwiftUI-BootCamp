//
//  ButtonBootCamp.swift
//  SwiftUI BootCamp
//
//  Created by Prem Kumar Gundu on 6/18/26.
//


import SwiftUI

struct ButtonBootCamp: View{
    
    @State var title: String = "This is my title"
    
    var body: some View{
        VStack(spacing: 20){
            Text(title)
                
            
            Button("Submit"){
                self.title = "Button Was Pressed"
            }
            
            Button(action: {
                self.title = "Button 2 pressed"
            }, label: {
                Text("Revert")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    //.background(.red)
                    .padding( 5)
                    //.padding()
                    .background(.tint)
                    .cornerRadius(10)
                    //.background(.black)
                
            })
            
            Button(action: {
                title = "Button 3 pressed"
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 50, height: 50)
                    .shadow(radius: 10)
                    .overlay(content: {
                        Image(systemName: "heart.fill")
                            .resizable()
                            .foregroundStyle(.red)
                            .frame(width: 25, height: 25)
                            .scaledToFit()
                    })
            })
            
            Button(action: {
                title = "Button 4 pressed"
            }, label: {
                Text("Finish")
                    .font(.caption)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .fill(.white)
                            .stroke(.black.opacity(0.3), lineWidth: 2.0)
                    )
            })
        }
    }
}

#Preview {
    ButtonBootCamp()
}

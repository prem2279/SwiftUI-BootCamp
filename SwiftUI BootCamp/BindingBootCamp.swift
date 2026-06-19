//
//  BindingBootCamp.swift
//  SwiftUI BootCamp
//
//  Created by Prem Kumar Gundu on 6/18/26.
//

import SwiftUI

struct BindingBootCamp: View {
    
    @State var backgroundColor: Color = Color.red
    @State var title: String = "Click Button to change To Black"
    @State var count: Int = 0
    @State var flag: Bool = false
    
    var body: some View{
        
        ZStack{
            //background
            backgroundColor
            
            //content
            VStack{
                Text(title)
                    .font(.title)
                    .fontWeight(.bold)
                    .textCase(.uppercase)
                    .multilineTextAlignment(.center)
                
                Text("No. of Clicks: \(count)")
                    .font(.title3)
                    .fontWeight(.bold)
                    .textCase(.uppercase)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title, count: $count, flag: $flag)
            }
            .foregroundStyle(.white)
        }
    }
}

struct ButtonView: View {
    @State var buttonColor: Color = .custom
    @Binding var backgroundColor: Color
    @Binding var title: String
    @Binding var count: Int
    @Binding var flag: Bool
    
    var body: some View {
        Button(action: {
            backgroundColor = flag ? .red : .black
            title = flag ? "Click Button to change To Black" : "Click Button to change To Red"
            count += 1
            buttonColor = flag ? .black : .red
            flag.toggle()
            
        }, label: {
            Text("Click Me")
                .font(.title2)
                .padding()
                .background(buttonColor)
                .cornerRadius(20)
                
            
        })
    }
}

#Preview {
    BindingBootCamp()
}

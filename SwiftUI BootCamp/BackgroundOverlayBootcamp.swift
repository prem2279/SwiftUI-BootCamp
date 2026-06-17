//
//  BackgroundOverlayBootcamp.swift
//  SwiftUI BootCamp
//
//  Created by Prem Kumar Gundu on 6/17/26.
//

import SwiftUI

struct BackgroundOverlayBootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            //.frame(width: 100, height: 100)
//            .background(
//                Circle()
//                    .fill(LinearGradient(colors: [Color.red, Color.blue], startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 100, height: 100)
//            )
//            
//            .background(
//                Circle()
//                    .fill(LinearGradient(colors: [Color.red, Color.black], startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 150, height: 150)
//            )
        
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(alignment: .topLeading) {
//                    Rectangle()
//                        .fill(.red)
//                        .frame(width: 50, height: 50)
//                }
//            .background(alignment: .bottomTrailing) {
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(width: 150, height: 150)
//                }
        
        Image(systemName: "heart.fill")
            .font(.system(size: 50))
            .foregroundColor(Color.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(colors: [Color.red,Color.blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: Color.custom, radius: 10, x: 0.0, y: 10)
                    .overlay(alignment: .bottomTrailing){
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 25, height: 25)
                            .shadow(color: Color.custom, radius: 10, x: 5, y: 5)
                            .overlay(
                                Text("3")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                    }
            )
    }
}

#Preview {
    BackgroundOverlayBootcamp()
}

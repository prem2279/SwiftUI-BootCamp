//
//  ForEachBootCamp.swift
//  SwiftUI BootCamp
//
//  Created by Prem Kumar Gundu on 6/18/26.
//

import SwiftUI

struct ForEachBootCamp: View{
    //let data: [String]
    //let myString: String = "Hellow"
    let items: [Item]
    
    var body: some View{
        VStack{
//            ForEach(0..<10){
//                index in
//                Circle()
//                    .frame(width: 50, height: 50)
//                    .overlay(
//                        Text("Hi: \(index)")
//                            .fontWeight(.bold)
//                            .foregroundStyle(.white)
//                    )
//            }
            
//            ForEach(data, id: \.self){ item in
//                Text("\(item)")
//            }
//            
//            ForEach(Array(data.enumerated()), id: \.offset) { index, item in
//                Text("\(index): \(item)")
//            }
            
            ForEach(items){item in
                Text("\(item.id): \(item.name)")
            }
        }
    }
}

struct Item: Identifiable {
    let id: Int
    let name: String
}

#Preview {
    ForEachBootCamp(items: [Item(id: 1, name: "Hello"), Item(id: 2, name: "Good Morning"), Item(id: 3, name: "How is Your Day")])
}

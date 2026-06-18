//
//  ScrollViewBootCamp.swift
//  SwiftUI BootCamp
//
//  Created by Prem Kumar Gundu on 6/18/26.
//

import SwiftUI

struct ScrollViewBootCamp: View{
    var body: some View{
        
        ScrollView(.vertical){
            VStack(spacing: 5){
                ForEach(0..<10){ vIndex in
                    Text("Title for Row \(vIndex)")
                    ScrollView(.horizontal){
                        HStack(spacing: 0){
                            ForEach(0..<30){ hIndex in
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.white)
                                    .frame(width: 100, height: 100)
                                    .overlay{
                                        Text("Cell in (\(vIndex),\(hIndex)) ")
                                            .foregroundStyle(.black)
                                            .padding()
                                    }
                                    //.padding(.vertical)
                                    .shadow(color: .gray, radius: 10, x: 0, y: 0)
                                    .padding()
                            }
                        }
                        //.padding(.horizontal)
                    }
                    
                }
            }
            //.padding()
        }
        .scrollIndicators(.hidden)
        
//        ScrollView(.horizontal, showsIndicators: false){
//            HStack{
//                ForEach(0..<30){index in
//                    RoundedRectangle(cornerRadius: 20)
//                        .frame(width: 200, height: 100)
//                        .overlay(alignment: .center){
//                            Text("Cell Num: \(index)")
//                                .foregroundStyle(.white)
//                                .padding()
//                        }
//                        .foregroundStyle(.black)
//                }
//               
//            }
//            .padding()
//        }
//        ScrollView{
//            VStack{
//                ForEach(0..<30){index in
//                    RoundedRectangle(cornerRadius: 20)
//                        .frame(height: 100)
//                        .overlay(alignment: .leading){
//                            Text("Cell Num: \(index)")
//                                .foregroundStyle(.white)
//                                .padding()
//                        }
//                        .foregroundStyle(.black)
//                }
//               
//            }
//            .padding()
//        }
    }
}

#Preview {
    ScrollViewBootCamp()
}

//
//  GridBootCamp.swift
//  SwiftUI BootCamp
//
//  Created by Prem Kumar Gundu on 6/18/26.
//

import SwiftUI

struct GridBootCamp: View{
    
    let columns: [GridItem] = [
//        GridItem(.fixed(50)),
//        GridItem(.fixed(70)),
//        GridItem(.fixed(110)),
//        GridItem(.fixed(50)),
//        GridItem(.fixed(20)),
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10),
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.adaptive(minimum: 50, maximum: 300)),
//        GridItem(.adaptive(minimum: 75, maximum: 300))
    ]
    var body: some View{
        ScrollView{
            VStack(){
                Rectangle()
                    .fill(.white)
                    .frame(height: 400)
                    .cornerRadius(20)
                    .shadow(radius: 10)
                    
                LazyVGrid(
                    columns: columns,
                    alignment: .center,
                    spacing: 6,
                    pinnedViews: [.sectionHeaders]
                ){
//                    Section("Gallery", content: {
//                        ForEach(0..<10){ index in
//                            RoundedRectangle(cornerRadius: 20)
//                                .frame(height: 150)
//                            //.padding()
//                        }
//                    })
                    
                    Section(content: {
                        ForEach(0..<10){ index in
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.cyan)
                                .frame(height: 100)
                
                            //.padding()
                        }
                    },
                            header: {
                        Text("Recent Pics")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(.red)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                            .background(Color( .systemGray6))
                            .cornerRadius(20)
                            .padding(.vertical)
                            
                        
                    })
                    
                    Section(content: {
                        ForEach(0..<10){ index in
                            RoundedRectangle(cornerRadius: 20)
                                .frame(height: 150)
                            //.padding()
                        }
                    },
                            header: {
                        Text("Gallery")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(.red)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                            .background(Color( .systemGray6))
                            .cornerRadius(20)
                            .padding(.vertical)
                            
                        
                    }, footer: {
                        Text("Developed by Prem")
                            .font(.caption)
                    })
                    
                }
//                LazyVGrid(columns: columns) {
//                    ForEach(0..<50){ index in
//                        RoundedRectangle(cornerRadius: 20)
//                            .frame(height: 150)
//                        //.padding()
//                    }
//                }
            }
            .padding()
        }
    }
}


struct GridBootCamp_Previews: PreviewProvider{
    static var previews: some View{
        GridBootCamp()
    }
}

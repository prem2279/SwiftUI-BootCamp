//
//  StacksBootCamp.swift
//  SwiftUI BootCamp
//
//  Created by Prem Kumar Gundu on 6/17/26.
//

import SwiftUI

struct StacksBootCamp: View{
    var body: some View{
        ZStack(alignment: .top){
            Rectangle()
                .fill(Color.gray)
                .frame(width:350, height: 350)
            
            VStack(alignment: .center, spacing: 0 ){
                HStack(alignment: .center, spacing: 0 ){
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 100, height: 100)
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 100, height: 100)
                    Rectangle()
                        .fill(Color.black)
                        .frame(width: 100, height: 100)
                }
                
                HStack(alignment: .center, spacing: 0 ){
                    Rectangle()
                        .fill(Color.purple)
                        .frame(width: 100, height: 100)
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: 100, height: 100)
                    Rectangle()
                        .fill(Color.pink)
                        .frame(width: 100, height: 100)
                }
                
                HStack(alignment: .center, spacing: 0 ){
                    Rectangle()
                        .fill(Color.orange)
                        .frame(width: 100, height: 100)
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 100, height: 100)
                    Rectangle()
                        .fill(Color.brown)
                        .frame(width: 100, height: 100)
                }
            }
        }
    }
}

#Preview {
    StacksBootCamp()
}

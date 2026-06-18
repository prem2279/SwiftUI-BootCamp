//
//  InitializerBootCamp.swift
//  SwiftUI BootCamp
//
//  Created by Prem Kumar Gundu on 6/18/26.
//

import SwiftUI

struct InitializerBootCamp: View{
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init( count: Int, fruit: Fruit){
        self.count = count
       
        
        if fruit == .apple{
            self.backgroundColor = .red
            self.title = "Apples"
        }else if fruit == .orange{
            self.backgroundColor = .orange
            self.title = "Oranges"
        }else{
            self.backgroundColor = .black
            self.title = "Other"
        }
    }
    
    enum Fruit{
        case apple
        case orange
    }
    
    var body: some View {
        VStack{
            Text("\(count)")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(Color.white)
                .underline()
            
            Text("\(title)")
                .textCase(.uppercase)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundStyle(Color.white)
        }
        .frame(width: 100, height: 100)
        .background(backgroundColor)
        .cornerRadius(20)
    }
}

#Preview {
    HStack{
        InitializerBootCamp( count: 9, fruit: .orange)
        InitializerBootCamp( count: 324, fruit: .apple)
    }
    
}

//
//  ExtractSubViewsBootCamp.swift
//  SwiftUI BootCamp
//
//  Created by Prem Kumar Gundu on 6/18/26.
//

import SwiftUI

struct ExtractSubViewsBootCamp: View{
    
    var body: some View{
        ZStack{
            //BackGround
            Color.custom
            
            //Content
            contentLayer
            
        }
    }
    
    var contentLayer: some View{
        HStack{
//                ItemSubView(count: 20, fruit: Fruit.apple)
//                ItemSubView(count: 30, fruit: Fruit.orange)
            ItemSubView(count: 20, title: "Apples", backgroundColor: .red)
            ItemSubView(count: 20, title: "Orange", backgroundColor: .orange)
            ItemSubView(count: 20, title: "Banana", backgroundColor: .yellow)
            ItemSubView(count: 20, title: "Peach", backgroundColor: .pink)
        }
    }
   
}

struct ItemSubView: View{
    let count: Int
    let title: String
    let backgroundColor: Color
//    init(count: Int, fruit: Fruit){
//        self.count = count
//        if fruit == .apple{
//            self.title = "Apple"
//            self.backgroundColor = .red
//        }else{
//            self.title = "Orange"
//            self.backgroundColor = .orange
//        }
//    }
    
    var body: some View{
        VStack{
            Text("\(count)")
            Text(title)
        }
        .foregroundStyle(.white)
        .padding()
        .background(backgroundColor)
        .cornerRadius(20)
    }
}

enum Fruit{
    case apple
    case orange
}

#Preview {
    ExtractSubViewsBootCamp()
}

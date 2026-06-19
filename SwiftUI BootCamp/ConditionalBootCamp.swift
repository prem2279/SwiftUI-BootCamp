//
//  ConditionalBootCamp.swift
//  SwiftUI BootCamp
//
//  Created by Prem Kumar Gundu on 6/19/26.
//

import SwiftUI

struct ConditionalBootCamp: View {
    @State var changeimage: Bool = false
    var body: some View {
        Button("Click TO Change Pic"){
            changeimage.toggle()
        }
        
        if changeimage{
            Image("1")
                .resizable()
                .frame(width: 200, height: 200)
        }else{
            Image("spotify")
                .resizable()
                .frame(width: 200, height: 200)
        }
    }
}

#Preview {
    ConditionalBootCamp()
}

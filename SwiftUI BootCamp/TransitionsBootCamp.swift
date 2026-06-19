//
//  TransitionsBootCamp.swift
//  SwiftUI BootCamp
//
//  Created by Prem Kumar Gundu on 6/19/26.
//

import SwiftUI

struct TransitionsBootCamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(){
            VStack {
                Button("Button"){
                    withAnimation(.spring, {
                        showView.toggle()
                    })
                    
                }
                Spacer()
                if showView{
                    
                    RoundedRectangle(cornerRadius: 20)
                        .frame( height: 300)
                        //.transition(.scale)
                        .transition(.asymmetric(insertion: .move(edge: .leading), removal: .scale))
                    
                }
                
                
                
            }
            .ignoresSafeArea(edges: .bottom)
            
            
            
        }
    }
}

#Preview {
    TransitionsBootCamp()
}

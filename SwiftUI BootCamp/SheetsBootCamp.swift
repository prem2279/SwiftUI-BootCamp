//
//  SheetsBootCamp.swift
//  SwiftUI BootCamp
//
//  Created by Prem Kumar Gundu on 6/22/26.
//

import SwiftUI

struct SheetsBootCamp: View {
    
    @State var showSecondScreen = false
    @State var showThirdScreen = false
    
    var body: some View {
        ZStack{
            Color.red
                .ignoresSafeArea()
            
            VStack (spacing: 30) {
                Button(action: {
                    showSecondScreen.toggle()
                }, label: {
                    Text("Second Screen")
                        .padding()
                        .background(Color(.white).cornerRadius(20))
                })
                
                Button(action: {
                    showThirdScreen.toggle()
                }, label: {
                    Text("Third Screen")
                        .padding()
                        .background(Color(.white).cornerRadius(20))
                })
            }
            .sheet(isPresented: $showSecondScreen, content: {
                SecondView()
            })
            .fullScreenCover(isPresented: $showThirdScreen, content: {
                ThirdView()
            })
        }
        
    }
}

struct SecondView: View {
    
    //@Environment(\.presentationMode) var presentationMode
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 20) {
            Text("This is Second View")
            
            Button("Close") {
                dismiss()
            }
        }
    }
}

struct ThirdView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(spacing: 20) {
            Text("This is Third View")
            
            Button("Close") {
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}



#Preview {
    SheetsBootCamp()
}

//
//  LoginPage.swift
//  SwiftUI BootCamp
//
//  Created by Prem Kumar Gundu on 6/18/26.
//

import SwiftUI

struct LoginPage: View{
    let title: String = "Login"
    let subTitle: String = "Enter Credentionals to Login"
    @State var name: String = ""
    @State var password: String = ""
    
    var body: some View{
        
                
        VStack(spacing: 20){
            Spacer()
            Image(systemName: "logo.playstation")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 150)
                
            //Spacer(minLength: 10)
            VStack{
                Text(title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text(subTitle)
                    .font(.caption)
                    .fontWeight(.medium)
            }
            
            //Spacer(minLength: 20)
            HStack(spacing: 20){
                Image(systemName: "envelope")
                    .frame(width: 25, height: 25)
                TextField("Enter your name", text: $name)
                    .frame(width: 245)
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(.black)
            )
            
            
            HStack(spacing: 20){
                
                Image(systemName: "lock.shield.fill")
                    .frame(width: 25, height: 25)
                TextField("Enter your password", text: $password)
                    .frame(width: 200)
                Image(systemName: "eye.fill")
                
            }
            .padding()
            
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(.black)
            )
            
            //Spacer(minLength: 20)
            
            Button(action: {
                
            }, label: {
                Text("Submit")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.tint)
                    .cornerRadius(20)

            })
            
            Spacer(minLength: 20)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        .background(Color(.systemGray6))
        
    }
}

#Preview {
    LoginPage()
}

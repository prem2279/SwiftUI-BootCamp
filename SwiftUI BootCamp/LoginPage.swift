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
    @State private var showPassword: Bool = false
    
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
                    .frame(maxWidth: .infinity)
                    .fontWeight(.semibold)
            }
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.black)
            )
            
            
            HStack(spacing: 20){
                
                Image(systemName: "lock.shield.fill")
                    .frame(width: 25, height: 25)
                if showPassword {
                        TextField("Enter your password", text: $password)
                            .fontWeight(.semibold)
                    } else {
                        SecureField("Enter your password", text: $password)
                            .fontWeight(.semibold)
                    }
                
                Button(action: {
                    self.showPassword.toggle()
                }, label: {
                    Image(systemName: showPassword ? "eye.slash.fill" : "eye.fill")
                                .foregroundColor(.black)
                    
                })
                
            }
            .padding()
            
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.black)
            )
            
            //Spacer(minLength: 20)
            
            Button(action: {
                
            }, label: {
                Text("Submit")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundStyle(.white)
                    .background(.tint)
                    .cornerRadius(20)

            })
            
            HStack(spacing: 0){
                Text("Don't Have an Account?  ")
                Button("SingUp"){
                    
                }
                .foregroundStyle(.custom)
            }
            
            Spacer(minLength: 20)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal, 50)
        .background(Color(.systemGray6))
        
    }
}

#Preview {
    LoginPage()
}

//
//  CreateAccountPage.swift
//  SwiftUI BootCamp
//
//  Created by Prem Kumar Gundu on 6/19/26.
//

import SwiftUI

struct CreateAccountPage: View {
    
    @State var fullName: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var cPassword: String = ""
    @State var showPassword: Bool = false
    @State var showCPassword: Bool = false
    
    var body: some View{
        ZStack {
            //Background
            Color(.systemGray6)
                .ignoresSafeArea()
            
            //Content
            VStack(spacing: 20){
                
                pageLogoView()
                
                pageTitleView()
                
                textFieldView(enteredText: $fullName, placeHolderText: "Enter Your Full Name", systemIcon: "person", title: "Full Name")
                textFieldView(enteredText: $email, placeHolderText: "Enter Your Email", systemIcon : "envelope", title: "Email")
                
                passwordView(showPassword: $showPassword, password: $password, placeHolderText: "Enter Your Password", title: "Password" )
                passwordView(showPassword: $showCPassword, password: $cPassword, placeHolderText: "Confirm Your Password", title: "Confirm Password")
                
                buttonView(buttonTitle: "Create Account", logoName: "apple.logo", showLogo: false)
                
                seperatorView()
                
                alternateSignUpView()
                
                loginNavigateView()
                
                
            }
            .padding()
            .padding(.horizontal)
        }
        
        
        
    }
    
    
}

struct loginNavigateView: View {
    var body: some View {
        HStack(spacing: 0){
            Text("Already Have an Account?  ")
            Button("Sing In"){
                
            }
            .foregroundStyle(.custom)
        }
    }
}

struct alternateSignUpView: View {
    var body: some View {
        HStack{
            buttonView(buttonTitle: "Google", logoName: "apple.logo")
            buttonView(buttonTitle: "Apple", logoName: "apple.logo")
        }
    }
}

struct seperatorView: View {
    var body: some View {
        HStack(spacing: 10, content: {
            Spacer()
                .frame(height: 2)
                .background(.gray)
            Text("or continue with")
                .fixedSize()
            Spacer()
                .frame(height: 2)
                .background(.gray)
        })
    }
}

struct pageLogoView: View {
    var body: some View{
        Circle()
            .fill(.purple.opacity(0.3))
            .frame(width: 75, height: 75)
            .overlay(
                Image(systemName: "square")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundStyle(.purple)
            )
    }
}

struct pageTitleView: View {
    var body: some View{
        
        VStack(spacing: 0){
            Text("Create Account")
                .font(.title)
                .fontWeight(.bold)
            Text("Sign up to get started")
                .fontWeight(.medium)
        }
    }
}

struct buttonView: View {
    @State var buttonTitle: String
    @State var logoName: String
    @State var showLogo: Bool = true
    
    var body: some View {
        Button(action: {
            
        }, label: {
            HStack(spacing: 10){
                if(showLogo){
                    Image(systemName: logoName)
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width: 18, height: 18)
                }
                
                Text(buttonTitle)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(.tint)
            .cornerRadius(10)
            
                
        })
    }
}

struct textFieldView: View {
    @Binding var enteredText : String
    @State var placeHolderText: String
    @State var systemIcon: String
    @State var title: String
    var body: some View {
        VStack (spacing: 0) {
            Text(title)
                .font(.caption)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack(spacing: 20){
                Image(systemName: systemIcon)
                TextField(placeHolderText, text: $enteredText)
                    .frame(maxWidth: .infinity)
                    .fontWeight(.semibold)
            }
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.black)
            )
        }
    }
}

struct passwordView: View {
    @Binding var showPassword: Bool
    @Binding var password: String
    @State var placeHolderText: String
    @State var title: String
    
    var body: some View {
        VStack (spacing: 0) {
            Text(title)
                .font(.caption)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
            HStack(spacing: 20){
                
                Image(systemName: "lock.shield.fill")
                    .frame(width: 25, height: 25)
                if showPassword {
                    TextField(placeHolderText, text: $password)
                        .fontWeight(.semibold)
                } else {
                    SecureField(placeHolderText, text: $password)
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
        }
    }
}

#Preview {
    CreateAccountPage()
}

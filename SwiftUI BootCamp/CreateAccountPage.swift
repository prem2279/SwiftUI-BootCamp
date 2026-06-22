//
//  CreateAccountPage.swift
//  SwiftUI BootCamp
//
//  Created by Prem Kumar Gundu on 6/19/26.
//

import SwiftUI

struct CreateAccountPage: View {
    
    var body: some View{
        ZStack {
            //Background
            Color(.systemGray6)
                .ignoresSafeArea()
            
            //Content
            AccountElementView()
        }
    }
}

// MARK: - Account Element View

struct AccountElementView: View {
    
    @State var fullName: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var cPassword: String = ""
    @State var showPassword: Bool = false
    @State var showCPassword: Bool = false
    
    var body: some View {
        VStack(spacing: 20){
            
            logoView
            
            titleView
            
            inputForm
            
            actionView
            
            footerView
        }
        .padding()
        .padding(.horizontal)
    }
}

//MARK: - Extension for Account Element View Input Form

extension AccountElementView{
    
    @ViewBuilder
    var inputForm: some View {
        
        TextFieldView(
            enteredText: $fullName,
            placeHolderText: "Enter Your Full Name",
            systemIcon: "person",
            title: "Full Name")
        TextFieldView(enteredText: $email,
                      placeHolderText: "Enter Your Email",
                      systemIcon : "envelope",
                      title: "Email")
        
        PasswordView(showPassword: $showPassword,
                     password: $password,
                     placeHolderText: "Enter Your Password",
                     title: "Password" )
        
        PasswordView(showPassword: $showCPassword,
                     password: $cPassword,
                     placeHolderText: "Confirm Your Password",
                     title: "Confirm Password")
    }
    
}

//MARK: - Extension for Account Element View Header & Footer

extension AccountElementView {
    var logoView: some View {
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
    
    @ViewBuilder
    var titleView: some View{
        
        VStack(spacing: 0){
            Text("Create Account")
                .font(.title)
                .fontWeight(.bold)
            Text("Sign up to get started")
                .fontWeight(.medium)
        }
    }
    
    var footerView: some View {
        LoginNavigateView()
    }
}

//MARK: - Extension for Action View

extension AccountElementView {
    @ViewBuilder
    var actionView: some View {
        CommonButtonView(buttonTitle: "Create Account", logoName: "apple.logo", showLogo: false){
            handleCreateAccount()
        }
        
        SeperatorView()
        
        AlternateSignUpView()
    }
}

//MARK: -Functions for Action Buttons
extension AccountElementView {
    func handleCreateAccount() {
        print("Create account tapped")
    }
}

// MARK: - Login Navigation View

struct LoginNavigateView: View {
    var body: some View {
        HStack(spacing: 0){
            Text("Already Have an Account?  ")
            Button("Sing In"){
                
            }
            .foregroundStyle(.custom)
        }
    }
}

// MARK: - Alternate SignUp View

struct AlternateSignUpView: View {
    var body: some View {
        HStack{
            CommonButtonView(buttonTitle: "Google", logoName: "apple.logo"){
                
            }
            CommonButtonView(buttonTitle: "Apple", logoName: "apple.logo"){
                
            }
        }
    }
}

// MARK: - Seperator View

struct SeperatorView: View {
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

// MARK: - Button View

struct CommonButtonView: View {
     let buttonTitle: String
     let logoName: String
     var showLogo: Bool = true
    let action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
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

//MARK: Custom View Builder for Input Field Template

struct InputFieldTemplate<Content: View> : View {
    let title: String
    let content: Content
    
    init(title: String, @ViewBuilder content: ()-> Content){
        self.title = title
        self.content = content()
    }
    
    var body: some View {
        VStack (spacing: 0) {
            Text(title)
                .font(.caption)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
            HStack(spacing: 20){
                
                content
                
            }
            .padding()
            
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.black)
            )
        }
    }
}

// MARK: - Text Field View

struct TextFieldView: View {
    
    @Binding var enteredText : String
    let placeHolderText: String
    let systemIcon: String
    let title: String
    
    var body: some View {
        
        InputFieldTemplate(title: title){
            Image(systemName: systemIcon)
            TextField(placeHolderText, text: $enteredText)
                .frame(maxWidth: .infinity)
                .fontWeight(.semibold)
        }
       
    }
}

// MARK: - Password View

struct PasswordView: View {
    @Binding var showPassword: Bool
    @Binding var password: String
    let placeHolderText: String
    let title: String
    
    var body: some View {
        InputFieldTemplate(title: title){
            Image(systemName: "lock.shield.fill")
                .frame(width: 25, height: 25)
            
            passwordField
            
            Button(action: {
                self.showPassword.toggle()
            }, label: {
                Image(systemName: showPassword ? "eye.slash.fill" : "eye.fill")
                    .foregroundColor(.black)
                
            })
        }
    }
    
    @ViewBuilder
    var passwordField: some View {
        if showPassword {
            TextField(placeHolderText, text: $password)
                .fontWeight(.semibold)
        } else {
            SecureField(placeHolderText, text: $password)
                .fontWeight(.semibold)
        }
    }
    
//    @ViewBuilder
//    func passwordField() -> some View {
//            if showPassword {
//                TextField(placeHolderText, text: $password)
//                    .fontWeight(.semibold)
//            } else {
//                SecureField(placeHolderText, text: $password)
//                    .fontWeight(.semibold)
//            }
//    }
    
}

#Preview {
    CreateAccountPage()
}

//
//  SignUp_View.swift
//  Login_D4
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/15.
//

import SwiftUI

struct SignUp_View: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var bottomText = "Terms of Service and Privacy Policy"
    var body: some View {
        NavigationStack{
            ZStack{
        Image("lady")
            .resizable()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .ignoresSafeArea()
        VStack(alignment: .center){
           
            Text("Sign Up")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
                .padding(.top)
            Text("Looks like you don't have an account.Let's create a new account for jane.doe@gmail.com")
                .font(.footnote)
                .foregroundColor(.white)
                .padding(.top)
            VStack{
                
                TextField("      Name", text: $email)
                    .frame(width: 300, height: 60)
                    .background(Color(.white))
                    .cornerRadius(10)
            }
            
            .frame(width: 300, height: 60)
            .background(Color(.white))
            .cornerRadius(10)
            .padding(.top)
            
            VStack{
                
                SecureField("      Password", text: $password)
                    .frame(width: 300, height: 60)
                    .background(Color(.white))
                    .cornerRadius(10)
            }
            
            .frame(width: 300, height: 60)
            .background(Color(.white))
            .cornerRadius(10)
            .padding(.top)
            
            HStack {
                Text("By selecting Agree and continue below, I agree to Terms of Service and Privacy Policy.")
                    .frame(width: 300)
                    .bold()
                    .font(.footnote)
                    .foregroundColor(.white)
                .padding(.top)
            }
            Spacer()
            NavigationLink{
                LogIn_View()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Continue")
                    .foregroundColor(.white)
                    .frame(width: 300, height: 60)
                    .background(Color(.brown))
                    .cornerRadius(10)
                
            }
         Spacer()
        }
        .frame(width: 360, height: 500)
        .background(Color(.black))
        .cornerRadius(15)
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        .opacity(0.8)
        .padding(.top, 150)
    }
    }
    }
}

#Preview {
    SignUp_View()
}

//
//  LogIn_View.swift
//  Login_D4
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/15.
//

import SwiftUI

struct LogIn_View: View {
    
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
           
            Text("Log in")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
                .padding(.top)
            
            HStack{
                Image("bighead")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                VStack {
                    Text("Bradley Alexander")
                        .bold()
                    Text("bradx2713@gmail.com")
                        .font(.footnote)
                }.foregroundColor(.white)
            }
            
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
            
            NavigationLink{
                WelcomeView()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Continue")
                    .foregroundColor(.white)
                    .frame(width: 300, height: 60)
                    .background(Color(.brown))
                    .cornerRadius(10)
                
            }
         Spacer()
            Text("Forgot Password?")
                .foregroundColor(.brown)
                .bold()
            Spacer()
            Spacer()
            Spacer()
        }
        .frame(width: 360, height: 400)
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
    LogIn_View()
}


//
//  ContentView.swift
//  Login_D4
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/15.
//

import SwiftUI

struct WelcomeView: View {
    
    @State private var email = ""
    
    var body: some View {
        NavigationStack{
            ZStack{
        Image("lady")
            .resizable()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .ignoresSafeArea()
        VStack(alignment: .center){
            Spacer()
            Spacer()
            Spacer()
            Text("Hi!")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
                .padding(.bottom)
            VStack{
                
                TextField("      Email", text: $email)
                    .frame(width: 300, height: 60)
                    .background(Color(.white))
                    .cornerRadius(10)
                NavigationLink{
                    LogIn_View()
                        .navigationBarBackButtonHidden()
                } label: {
                    Text("Continue")
                        .bold()
                        .foregroundColor(.white)
                        .frame(width: 300, height: 60)
                        .background(Color(.brown))
                        .cornerRadius(10)
                }
            }
            Text("or")
                .padding(.leading, 150)
                .foregroundColor(.white)
                .bold()
            HStack{
                Image("facebook")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25)
                    .padding(.leading, -40)
                Text("Continue with Facebook")
                    .bold()
            }
            .frame(width: 300, height: 60)
            .background(Color(.white))
            .cornerRadius(10)
            
            HStack{
                Image("google")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .padding(.leading, -50)
                Text("Continue with Google")
                    .bold()
            }
            .frame(width: 300, height: 60)
            .background(Color(.white))
            .cornerRadius(10)
            
            HStack{
                Image("apple")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25)
                    .padding(.leading, -50)
                Text("Continue with Apple")
                    .bold()
            }
            .frame(width: 300, height: 60)
            .background(Color(.white))
            .cornerRadius(10)
            
            NavigationLink{
                SignUp_View()
                    .navigationBarBackButtonHidden()
            } label: {
                HStack{
                    Text("Don't have an acount?")
                        .foregroundColor(.white)
                        .bold()
                    Text("Sign Up")
                        .foregroundColor(.white)
                        .bold()
                        .frame(width: 80, height: 30)
                        .background(Color(.brown))
                        .cornerRadius(6)
                }
                
            }
            .padding(.top)
            
            
            Text("Forgot Your Password?")
                .bold()
                .foregroundColor(.brown)
                .padding(.top)
            Spacer()
            Spacer()
        }
        .frame(width: 360, height: 600)
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
    WelcomeView()
}

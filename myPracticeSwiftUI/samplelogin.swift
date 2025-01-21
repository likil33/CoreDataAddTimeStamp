//
//  samplelogin.swift
//  myPracticeSwiftUI
//
//  Created by Santhosh K on 21/01/25.
//

import SwiftUI

struct samplelogin: View {
    
    // State properties to hold the username and password inputs
        @State private var username: String = ""
        @State private var password: String = ""
        
        // State to handle login result
        @State private var loginSuccess: Bool? = nil
    
    
    var body: some View {
            VStack {
                // Title for the login page
                Text("Login")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 50)
                
                Spacer()
                
                // Username TextField
                TextField("Username", text: $username)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .padding(.horizontal, 30)
                
                // Password SecureField
                SecureField("Password", text: $password)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 30)
                
                // Login Button
                Button(action: {
                    // Here you can add logic for authentication
                    if username == "user" && password == "password" {
                        loginSuccess = true
                    } else {
                        loginSuccess = false
                    }
                }) {
                    Text("Login")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.horizontal, 30)
                }
                
                // Login result message
                if let loginSuccess = loginSuccess {
                    if loginSuccess {
                        Text("Login Successful!")
                            .foregroundColor(.green)
                            .padding()
                    } else {
                        Text("Invalid username or password.")
                            .foregroundColor(.red)
                            .padding()
                    }
                }
                
                Spacer()
            }
            .padding()
        }
}

#Preview {
    samplelogin()
}

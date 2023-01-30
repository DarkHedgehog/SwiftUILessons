//
//  LoginView.swift
//  SwiftUILessons
//
//  Created by Aleksandr Derevenskih on 26.01.2023.
//

import SwiftUI

struct LoginView: View {
    @Binding var isUserLoggedIn: Bool

    @State private var showIncorrentCredentialsWarning = false
    @State private var login = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            Image("back")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .scaledToFill()
            VStack {
                Image("world")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                TextField("Login", text: $login)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(maxWidth: 250)
                SecureField("Password:", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(maxWidth: 250)
                Button(action: loginAction) {
                    Text("Log in")
                        .padding()
                        .frame(width: 250, height: 50, alignment: .center)
                }
            }
        }
        .alert(isPresented: $showIncorrentCredentialsWarning,
               content: {
            Alert(title: Text("Error"),
                  message: Text("Incorrent Login/Password was entered"))
        })
    }

    private func loginAction() {
        print("\(login) logged in")
        if login == "" && password == "" {
            isUserLoggedIn = true
        } else {
            showIncorrentCredentialsWarning = true
        }
        password = ""
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(isUserLoggedIn: .constant(false))
    }
}

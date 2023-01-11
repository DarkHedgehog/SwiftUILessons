//
//  ContentView.swift
//  SwiftUILessons
//
//  Created by Aleksandr Derevenskih on 11.01.2023.
//

import SwiftUI

struct ContentView: View {
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
    }

    private func loginAction() {
        print("\(login) logged in")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

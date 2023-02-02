//
//  ContentView.swift
//  SwiftUILessons
//
//  Created by Aleksandr Derevenskih on 11.01.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isUserLoggedIn = false
    private var publisher = Session.instance.loginPublesher()            .receive(on: RunLoop.main)

    var body: some View {
        if isUserLoggedIn {
            WorkflowsView(isUserLoggedIn: $isUserLoggedIn)
        } else {
            // LoginView(isUserLoggedIn: $isUserLoggedIn)
            VKLoginWebView()
                .onReceive(publisher) { _ in
                    isUserLoggedIn = Session.instance.checkApiEnabled()
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

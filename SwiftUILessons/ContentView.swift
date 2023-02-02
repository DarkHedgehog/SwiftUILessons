//
//  ContentView.swift
//  SwiftUILessons
//
//  Created by Aleksandr Derevenskih on 11.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isUserLoggedIn: Bool = false
    
    var body: some View {
        
        if isUserLoggedIn {
            WorkflowsView(isUserLoggedIn: $isUserLoggedIn)
        } else {
            LoginView(isUserLoggedIn: $isUserLoggedIn)
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

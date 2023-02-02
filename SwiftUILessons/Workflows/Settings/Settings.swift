//
//  Settings.swift
//  SwiftUILessons
//
//  Created by Aleksandr Derevenskih on 27.01.2023.
//

import SwiftUI

struct Settings: View {
    @Binding var isUserLoggedIn: Bool

    @State var isConfirmationLogout = false
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Button("Logout") {
                    isConfirmationLogout = true
                }
            }
        }.confirmationDialog("Logout", isPresented: $isConfirmationLogout) {
            Button("Logout") {
                isUserLoggedIn = false
            }
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings(isUserLoggedIn: .constant(true))
    }
}

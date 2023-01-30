//
//  UserDetailView.swift
//  SwiftUILessons
//
//  Created by Aleksandr Derevenskih on 26.01.2023.
//

import SwiftUI

struct UserDetailView: View {
    var user: User
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Text(user.firstName)
                Text(user.lastName)
            }
        }
    }
}

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailView(user: UsersDataSource[0])
    }
}

//
//  UserList.swift
//  SwiftUILessons
//
//  Created by Aleksandr Derevenskih on 13.01.2023.
//

import SwiftUI

struct UserList: View {
    var data = UsersDataSource
    var body: some View {
        NavigationStack {
            List {
                ForEach(data) { user in
                    NavigationLink (destination: {
                        UserDetailView(user: user)
                    }, label: {
                        RecordCell{
                            UserCell(user: user)
                        }
                    })
                }
            }
        }
    }
}

struct UserList_Previews: PreviewProvider {
    static var previews: some View {
        UserList()
    }
}

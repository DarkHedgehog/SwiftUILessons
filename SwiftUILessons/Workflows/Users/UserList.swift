//
//  UserList.swift
//  SwiftUILessons
//
//  Created by Aleksandr Derevenskih on 13.01.2023.
//

import SwiftUI

struct UserList: View {
    @ObservedObject var viewModel: UsersViewModel

    init(viewModel: UsersViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.users) { user in
                    NavigationLink(destination: {
                        UserDetailView(user: user)
                    }, label: {
                        RecordCell {
                            UserCell(user: user)
                        }
                    })
                }
            }
        }
        .onAppear(perform: viewModel.fetch)
    }
}

//struct UserList_Previews: PreviewProvider {
//    static var previews: some View {
//        UserList()
//    }
//}

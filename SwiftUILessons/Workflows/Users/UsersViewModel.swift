//
//  UsersViewModel.swift
//  SwiftUILessons
//
//  Created by Aleksandr Derevenskih on 02.02.2023.
//

import Foundation

class UsersViewModel: ObservableObject {
    @Published var users: [User] = []

    public func fetch() {
        ApiDataService.instance.getFriends() { [weak self] result in
            self?.users = result ?? []
        }
    }

}

//
//  MainView.swift
//  SwiftUILessons
//
//  Created by Aleksandr Derevenskih on 26.01.2023.
//

import SwiftUI

struct WorkflowsView: View {
    @Binding var isUserLoggedIn: Bool

    var body: some View {
        TabView {
            NewsFeed().tabItem {
                Label("News", systemImage: "newspaper.fill")
            }
            UserList().tabItem {
                Label("Users", systemImage: "person.fill")
            }
            GroupsList().tabItem {
                Label("Groups", systemImage: "list.dash")
            }
            Settings(isUserLoggedIn: $isUserLoggedIn).tabItem {
                Label("Profile", systemImage: "gear")
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        WorkflowsView(isUserLoggedIn: .constant(true))
    }
}

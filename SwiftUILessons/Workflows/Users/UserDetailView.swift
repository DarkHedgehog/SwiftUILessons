//
//  UserDetailView.swift
//  SwiftUILessons
//
//  Created by Aleksandr Derevenskih on 26.01.2023.
//

import SwiftUI
import ASCollectionView

struct UserDetailView: View {
    var user: User
    @State var posts: [UserPost] = []
    @State var data = photosDataSource
    var body: some View {
        VStack {
            Text(user.firstName)
            Text(user.lastName)
            ASCollectionView(data: posts) { post, _ in
                VStack {
                    Text(post.text)
                    MultiplePhotosView(photosUrl: post.imageUrls)
                }
            }.layout {
                .grid(
                    layoutMode: .fixedNumberOfColumns(1),
                    itemSpacing: 0,
                    lineSpacing: 16)
            }
        }.onAppear() {
            ApiDataService.instance.getFriendPosts(userId: user.id) { posts in
                self.posts = posts ?? []
            }
        }
    }
}

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailView(user: usersDataSource[0])
    }
}

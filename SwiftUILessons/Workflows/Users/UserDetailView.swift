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
    @State var data = photosDataSource
    var body: some View {
        VStack {
            Text(user.firstName)
            Text(user.lastName)
            ASCollectionView(data: data) { (photo, context) in                 VStack {
                Text(photo.text)
                AsyncImage(url: URL(string: photo.imageURL)) { image in
                    image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 150, height: 150)
                .background(Color.gray)
                .cornerRadius(5)
            }

            }.layout {
                .grid(
                    layoutMode: .fixedNumberOfColumns(2), itemSpacing: 0,
                    lineSpacing: 16)
            }
        }
    }
}

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailView(user: usersDataSource[0])
    }
}

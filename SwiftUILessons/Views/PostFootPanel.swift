//
//  PostFootPanel.swift
//  SwiftUILessons
//
//  Created by Aleksandr Derevenskih on 09.02.2023.
//

import SwiftUI

struct PostFootPanel: View {
    @State var post: UserPost

    var body: some View {
        HStack {
            Image(systemName: "heart")
                .modifier(BounceAnimation())
                .foregroundColor(.red)
            Text("dgasas")
        }
        .padding()
    }
}

struct PostFootPanel_Previews: PreviewProvider {
    static var previews: some View {
        PostFootPanel(post: postsDataSource[0])
    }
}

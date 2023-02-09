//
//  MultiplePhotosView.swift
//  SwiftUILessons
//
//  Created by Aleksandr Derevenskih on 09.02.2023.
//

import SwiftUI

struct MultiplePhotosView: View {
    var photosUrl: [String]
    var body: some View {
        if !photosUrl.isEmpty {
            AsyncImage(url: URL(string: photosUrl[0])) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                ProgressView()
            }
            .frame(width: .infinity, height: 150)
            .background(Color.gray)
            .cornerRadius(5)
        }
    }
}

struct MultiplePhotosView_Previews: PreviewProvider {
    static var previews: some View {
        MultiplePhotosView(photosUrl: ["https://fotointeres.ru/wp-content/uploads/2012/04/0_82801_eaf23dcf_orig.jpg"])
    }
}

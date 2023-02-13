//
//  MultipleImagesViewCoordinator.swift
//  SwiftUILessons
//
//  Created by Aleksandr Derevenskih on 13.02.2023.
//

import Foundation
import SwiftUI

struct MultipleImages: UIViewRepresentable {
    @State var imageUrls: [String]

    typealias UIViewType = MultipleImagesView

    func makeUIView(context: Context) -> UIViewType {
        let view = UIViewType()
        return view
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {
        // TODO: разобраться с нулевым фреймом
        uiView.frame = CGRect(x: 0, y: 0, width: 600, height: 100)
        uiView.loadImagesNamed(imageUrls)
    }

}

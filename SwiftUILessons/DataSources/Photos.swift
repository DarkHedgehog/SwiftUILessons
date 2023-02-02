//
//  Photos.swift
//  SwiftUILessons
//
//  Created by Aleksandr Derevenskih on 30.01.2023.
//

import Foundation

struct Photo: Identifiable {
    var id: Int
    var imageURL: String
    var text: String
}

let PhotosDataSource = [
    Photo(
        id: 0,
        imageURL: "https://img2.akspic.ru/attachments/originals/1/1/1/3/0/103111-gidroresursy-pustynya-dikaya_mestnost-macbook-apple_masvook_pro-4288x2848.jpg",
        text: "фото 1"),
        Photo(
            id: 1,
            imageURL: "https://fotointeres.ru/wp-content/uploads/2012/04/0_82801_eaf23dcf_orig.jpg",
            text: "фото 2")
        ]

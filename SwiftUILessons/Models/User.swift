//
//  Profile.swift
//  IOSLessons
//
//  Created by Aleksandr Derevenskih on 28.06.2022.
//

import Foundation
import UIKit

struct User: Identifiable {
    var id: Int
    var imageURL: String?
    var fullname: String {
        "\(firstName) \(lastName)"
    }
    var firstName: String
    var lastName: String
}

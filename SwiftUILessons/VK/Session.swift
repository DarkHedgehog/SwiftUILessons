//
//  Session.swift
//  IOSLessons
//
//  Created by Aleksandr Derevenskih on 15.06.2022.
//

import Foundation
import Combine

final class Session {
    static let clientId = "8194842"
    static var instance = Session()

    var token: String = ""
    var userId: Int = -1

    private init() { }

    func checkApiEnabled() -> Bool {
        token = UserDefaults.standard.string(forKey: "vkToken") ?? ""
        return token != ""
    }

    func loginPublesher () -> NotificationCenter.Publisher {
        return NotificationCenter.default
            .publisher(for: Notification.Name("vkTokenSaved"))
    }
}

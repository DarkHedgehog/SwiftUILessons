//
//  UserCell.swift
//  SwiftUILessons
//
//  Created by Aleksandr Derevenskih on 13.01.2023.
//

import SwiftUI

struct UserCell: View {
    var user: User
    var body: some View {
        HStack {
            CircleImage(name: "user", diameter: 80)
            Text(user.fullname)
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell(user: User(id: 0, firstName: "Тест", lastName: "Тестович"))
    }
}

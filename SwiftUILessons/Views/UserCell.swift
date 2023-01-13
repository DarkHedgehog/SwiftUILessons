//
//  UserCell.swift
//  SwiftUILessons
//
//  Created by Aleksandr Derevenskih on 13.01.2023.
//

import SwiftUI

struct UserCell: View {
    var name: String
    var body: some View {
        HStack {
            CircleImage(name: "user", diameter: 80)
            Text(name)
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell(name: "Иван Иванович")
    }
}

//
//  UserList.swift
//  SwiftUILessons
//
//  Created by Aleksandr Derevenskih on 13.01.2023.
//

import SwiftUI

struct UserList: View {
    var body: some View {
        List {
            RecordCell{
                UserCell(name: "Петр Петрович")
            }
            RecordCell{
                UserCell(name: "Иван Иванович")
            }
        }
    }
}

struct UserList_Previews: PreviewProvider {
    static var previews: some View {
        UserList()
    }
}

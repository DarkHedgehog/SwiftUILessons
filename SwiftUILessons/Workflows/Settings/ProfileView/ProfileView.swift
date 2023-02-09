//
//  ProfileView.swift
//  SwiftUILessons
//
//  Created by Aleksandr Derevenskih on 07.02.2023.
//

import SwiftUI

struct ProfileView: View {
    @State var imageName: String
    @State var firstName: String
    @State var lastName: String
    var body: some View {
        HStack {
            CircleImage(name: imageName, diameter: 150)
                .modifier(BounceAnimation())
            VStack(alignment: .leading) {
                Text(firstName)
                Text(lastName)
            }
            Spacer()
        }.padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(imageName: "DarkHedgehog", firstName: "Alex", lastName: "Punkov")
    }
}

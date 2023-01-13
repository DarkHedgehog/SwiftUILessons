//
//  RecordCell.swift
//  SwiftUILessons
//
//  Created by Aleksandr Derevenskih on 13.01.2023.
//

import SwiftUI

struct RecordCell<Content: View>: View {

    var content: Content

    var body: some View {
        content
            .background(.green)
            .border(.red)
            .rotationEffect(Angle(degrees: 10))
    }

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
}

struct RecordCell_Previews: PreviewProvider {
    static var previews: some View {
        RecordCell() {
            Text("dsgasdgsd")
        }
    }
}

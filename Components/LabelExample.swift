//
//  LabelExample.swift
//  CursoAris
//
//  Created by Sergio Fernández on 21/8/24.
//

import SwiftUI

struct LabelExample: View {
    var body: some View {
        Label("Hola Swift ", image: "icon")
        Label("Hola Mundo", systemImage: "figure.badminton")
        Label(
            title: { Text("Hola Sergio") },
            icon: { Image("icon").resizable().scaledToFit().frame(height: 50 ) }
        )
    }
}

#Preview {
    LabelExample()
}

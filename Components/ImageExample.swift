//
//  ImageExample.swift
//  CursoAris
//
//  Created by Sergio Fernández on 21/8/24.
//

import SwiftUI

struct ImageExample: View {
    var body: some View {
        Image("icon").resizable().frame(width: 100 ,height: 100)
        Image(systemName: "figure.walk").resizable().frame(width: 30,height: 50)
    }
}

#Preview {
    ImageExample()
}

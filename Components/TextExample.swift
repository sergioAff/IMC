//
//  TextExample.swift
//  CursoAris
//
//  Created by Sergio Fernández on 21/8/24.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        VStack(content: {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundStyle(.orange).underline(pattern: .dash)
            Text("Custom").font(.system(size: 20,weight: .light, design: .monospaced)).italic()
            Text("repeat repeat repeat repeat").border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/).frame(width: 50).lineLimit(2).lineSpacing(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
        })
    }
}

#Preview {
    TextExample()
}

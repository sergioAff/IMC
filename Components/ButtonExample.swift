//
//  ButtonExample.swift
//  CursoAris
//
//  Created by Sergio Fernández on 21/8/24.
//

import SwiftUI

struct ButtonExample: View {
    var body: some View {
        Button("Touch me") {
            print("It's work")
        }
        Button(action: {print("This works too")}) {
            Text("Button").frame(width: 100,height: 50).background(.blue).foregroundColor(.white).cornerRadius(5)
        }
    }
}

struct Counter:View {
    @State var contador:Int = 0
    var body: some View {
        VStack {
            Text("\(contador)").padding(.vertical,20).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            HStack{
                Button {
                    contador += 1
                } label: {
                    Text ("+1")
                }.padding(.horizontal,20).frame(width: 100,height: 40).background(.orange).cornerRadius(8).foregroundColor(.white).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).shadow(color: .blue, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Button {
                    contador -= 1
                } label: {
                    Text ("-1")
                }.padding(.horizontal,20).frame(width: 100,height: 40).background(.orange).cornerRadius(8).foregroundColor(.white).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).shadow(color: .red, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)

            }
        }
    }
}


#Preview {
    Counter()
}



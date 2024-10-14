//
//  MenuView.swift
//  CursoAris
//
//  Created by Sergio Fernández on 22/8/24.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack{
            List(content: {
                NavigationLink(destination:{IMCView()}){
                    Text("IMC Caclulator")
                }
                NavigationLink(destination:{SuperheroSerarcher()}){
                    Text("Super Hero Finder")
                };
            })
        }
    }
}

#Preview {
    MenuView()
}

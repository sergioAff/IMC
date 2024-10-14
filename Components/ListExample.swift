//
//  ListExample.swift
//  CursoAris
//
//  Created by Sergio Fernández on 26/8/24.
//

import SwiftUI

var pokemons=[Pokemon(name:"Pikachu"),Pokemon(name:"Charizard"),Pokemon(name:"Charmander")]
var digimons=[Digimon(name: "Aguomn"), Digimon(name: "XXX"), Digimon(name: "yyy")]

struct ListExample: View {
    var body: some View {
        //       List{
        //         Text("Hola")
        //         Text("Adios")
        // }
        
        
        List{
            Section(header : Text("Pokemon")){ForEach(pokemons, id:\.name) { pokemon in
                /*@START_MENU_TOKEN@*/Text(pokemon.name)/*@END_MENU_TOKEN@*/
            }

            }
            Section(header: Text("Digimons")){
                ForEach(digimons){digimon in
                    Text(digimon.name)
                    }
                }
        }.listStyle(.sidebar)
    }
}

struct Pokemon{
    let name:String
}

struct Digimon:Identifiable{
    var id = UUID()
    let name:String
}

#Preview {
    ListExample()
}

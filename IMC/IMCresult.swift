//
//  IMCresult.swift
//  CursoAris
//
//  Created by Sergio Fernández on 22/8/24.
//

import SwiftUI

struct IMCresult: View {
    let userWight:Double
    let userHeight:Double
    var body: some View {
        VStack {
            Text("Resultado").bold().font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundStyle(.white).monospaced()
            InformationView(result: calculateIMC(weight: userWight, height: userHeight))
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(.bgColorApp)
    }
}

func calculateIMC(weight:Double, height:Double) -> Double{
    return weight/((height/100)*(height/100))
}

func getImcResult(result:Double) -> (String,String,Color) {
    var title:String
    var description:String
    var color:Color
    
    switch result {
    case 0.00..<20:
        title = "Peso bajo"
        description = "Estás por debajo del peso recomendado"
        color = Color.yellow
    case 20.00..<24.99:
        title = "Peso normal"
        description = "Estás en el peso recomendado "
        color = Color.green
    case 25.00..<30:
        title = "Sobrepeso"
        description = "Estás por encima del peso recomendado"
        color = Color.orange
    case 30.00..<100:
        title = "Obesidad"
        description = "Estás muy por encima del peso recomendado"
        color = Color.red
    default:
        title = "Error"
        description = "Ha ocurrido un error"
        color = Color.gray
    }
    return (title,description,color)
}

struct InformationView:View {
    let result:Double
    var body: some View {
        let information=getImcResult(result: result)
        VStack {
            Spacer()
            Text("\(information.0)").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundStyle(information.2)
            Spacer()
            Text ("\(result,specifier: "%.1f")%").foregroundStyle(.white).bold().font(.system(size: 80))
            Spacer()
            Text("\(information.1)").padding(.horizontal,10).font(.title2).foregroundColor(.white)
            Spacer()
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity).background(.bgComponent).cornerRadius(20).padding(10)
        
    }
}

#Preview {
    IMCresult(userWight: 50, userHeight: 180)
}

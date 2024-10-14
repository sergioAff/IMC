import SwiftUI

struct IMCView: View {
    @State var gender:Int=1
    @State var height:Double=150
    @State var age:Double=20
    @State var weight:Double=60
    var body: some View{
        VStack(content: {
            
            HStack(content: {
                ToggleButton(image: "person.fill", text: "Hombre", gender: 0, selectedGender: $gender)
                ToggleButton(image: "person", text: "Mujer", gender: 1, selectedGender: $gender)
            })
            HeightCalculator(selectedHeight: $height)
            
            HStack {
                AgeWheightCalculator(title: "Edad", content: $age)
                AgeWheightCalculator(title: "Peso", content: $weight)
            }
            CalcularButton(userWight: weight, userHeight: height)
        }).frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.bgColorApp)
            .toolbar{ToolbarItem(placement: .principal)
                {Text("IMC Calculator").bold().foregroundStyle(.white)}
            }
            .navigationBarBackButtonHidden()
    }
}

struct ToggleButton:View {
    let image:String
    let text:String
    let gender:Int
    
    @Binding var selectedGender:Int
    var body: some View {
        
        let color = if(gender==selectedGender){
            Color.bgComponentSelected
        }else{
            Color.bgComponent
        }
        Button(action: {selectedGender=gender}) {
            VStack(content: {
                Image(systemName: image).resizable().scaledToFit().frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/).foregroundStyle(.white)
                InformationText(content: text)
            }).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(color)
        }.cornerRadius(20)
    }
}

struct HeightCalculator:View {
    @Binding var selectedHeight:Double
    
    var body: some View {
        VStack(content: {
            TitleText(content: "Altura")
            InformationText(content: "\(Int(selectedHeight))")
            Slider(value: $selectedHeight, in: 100...200 ,step: 1).padding(.horizontal,20).accentColor(.purple)
        }).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(.bgComponent).cornerRadius(20)
    }
}

struct AgeWheightCalculator:View {
    let title:String
    @Binding var content:Double
    var body: some View {
        
        VStack(content: {
            TitleText(content: title)
            InformationText(content: String(content))
            HStack(content: {
                Button(action:
                        {if (title == "Peso")
                    { if (content < 249){
                        content += 1
                    }}else if (title == "Edad"){
                        if (content < 120){
                            content += 1
                        }
                    }
                        
                }
                ){
                    Text ("+").font(.title).bold().frame(width: 70, height: 70)
                }.background(.purple).foregroundColor(.white).cornerRadius(50)
                Button(action:
                        {if (title == "Peso")
                    { if (content > 1){
                        content -= 1
                    }}else if (title == "Edad"){
                        if (content > 0){
                            content -= 1
                        }
                    }
                        
                }
                ){
                    Text ("-").font(.title).bold().frame(width: 70, height: 70)
                }.background(.purple).foregroundColor(.white).cornerRadius(50)
                
            })
        }).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(.bgComponent).cornerRadius(20)
        
    }
}

struct CalcularButton:View {
    let userWight:Double
    let userHeight:Double
    var body: some View {
        
        NavigationStack {
            NavigationLink(destination: {IMCresult(userWight: userWight, userHeight: userHeight )}){
                Text("Calcular").foregroundStyle(.purple)
            } .frame(maxWidth: .infinity, maxHeight: 50).font(.title).bold().frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 50).background(.bgComponent).cornerRadius(20)
        }.background(.bgComponent)
    }
}


struct TitleText:View {
    let content:String
    var body: some View {
        Text(content).foregroundStyle(.gray).font(.title2)
    }
}

struct InformationText:View {
    let content:String
    var body: some View {
        Text(content).bold().font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundStyle(.white)
    }
}

#Preview {
    IMCView()
}

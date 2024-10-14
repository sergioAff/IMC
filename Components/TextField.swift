import SwiftUI

struct TextFieldExample:View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack {
            TextField("Email", text: $email)
                .frame(height:50)
                .padding(10)
                .keyboardType(.emailAddress)
                .background(.gray.opacity(0.2))
                .cornerRadius(10)
                .padding(.horizontal,20)
                .onChange(of: email) { oldValue, newValue in
                    print("Antiguo: \(oldValue) nuevo: \(newValue)")
            }
            SecureField("Password", text: $password)
                .frame(height:50)
                .padding(10)
                .background(.gray.opacity(0.2))
                .cornerRadius(10)
                .padding(.horizontal,20)
                .onChange(of: password) { oldValue, newValue in
                    print("Antiguo: \(oldValue) nuevo: \(newValue)")
            }
        }
    }
}
#Preview {
    TextFieldExample()
}

//
//  ContentView.swift
//  ExercicioAula2
//
//  Created by user288577 on 12/6/25.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var alertMessage: String = ""
    @State private var showAlert: Bool = false
    
    var body: some View {
        VStack {
            TextField(
                "username", text: $username
            ).frame(maxWidth: 150)
                    
            HStack {
                SecureField(
                    "password", text: $password
                ).frame(maxWidth: 200)
                .textContentType(.password)
                        
                Button(action: handleLogin) {
                    Image(systemName: "greaterthan.square.fill")
                }
            }.frame(maxWidth: 150)
        }.frame(maxWidth: 200)
                
        .alert(alertMessage, isPresented:
            $showAlert){
                Button("Ok", role: .cancel){}
            }
    }
    
    private func handleLogin(){
        if username == "Admin" && password == "123" {
            alertMessage = "Login feito com sucesso!"
        }
        else {
            alertMessage = "Credenciais invalidas!"
        }
            
        showAlert = true
    }}

#Preview {
    ContentView()
}

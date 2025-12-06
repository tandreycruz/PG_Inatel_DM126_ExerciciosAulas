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
    @State private var isLoggedIn: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.blue)
                
                TextField("Usuário", text: $username)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal, 32)
                
                SecureField("Senha", text: $password)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal, 32)
                
                Button(action: handleLogin) {
                    HStack {
                        Image(systemName: "arrow.right.circle.fill")
                        Text("Entrar").fontWeight(.semibold)
                    }
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: 200)
                    .background(Color.blue)
                    .cornerRadius(12)
                }
            }
            .padding()
            .alert(alertMessage, isPresented: $showAlert) {
                Button("Ok", role: .cancel) {}
            }
            .navigationDestination(isPresented: $isLoggedIn) {
                HomeView()
            }
        }
    }
    
    private func handleLogin(){
        if username == "Admin" && password == "123" {
            isLoggedIn = true
        }
        else {
            alertMessage = "Credenciais invalidas!"
            showAlert = true
        }        
    }}

#Preview {
    ContentView()
}

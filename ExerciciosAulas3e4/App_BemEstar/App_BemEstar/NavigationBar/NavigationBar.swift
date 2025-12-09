//
//  NavigationBar.swift
//  App_BemEstar
//
//  Created by user288577 on 11/29/25.
//

import SwiftUI

struct NavigationBar: View {
    @ObservedObject var userManager: UserManager
    
    @State private var nomeAtual: String = ""
    @State private var nomes: [String] = []
    @State private var showAlert: Bool = false
    @State private var nomeNovo: String = ""
    @State private var senhaNova: String = ""
    
    init(userManager: UserManager) {
        self.userManager = userManager
        _nomes = State(initialValue: userManager.usuarios.map { $0.username })
        _nomeAtual = State(initialValue: userManager.usuarios.first?.username ?? "Usuário")
    }

    
    
    var body: some View {
        HStack{
            Menu{
                ForEach(nomes, id: \.self){
                    nome in
                    Button(nome)
                    {
                        nomeAtual = nome
                    }
                }
            }label: {
                Text(nomeAtual)
                    .font(.headline)
                    .fontWeight(.bold)
            }
            
            Button(action: {showAlert = true}){
                Image(systemName: "plus.circle.fill")
            .font(.title3)
            .foregroundStyle(.gray)
            }.sheet(isPresented: $showAlert){
                VStack{
                    Text("Adicionar novo usuario").font(.headline)
                    TextField("Digite o nome", text: $nomeNovo).textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Digite a senha", text: $senhaNova)
                                .textFieldStyle(RoundedBorderTextFieldStyle())

                    
                    HStack {
                        Button("Cancelar") {
                            showAlert = false
                            nomeNovo = ""
                            senhaNova = ""
                        }.foregroundStyle(.red)
                        Button("Adicionar") {
                            if !nomeNovo.isEmpty && !senhaNova.isEmpty {
                                userManager.adicionarUsuario(nome: nomeNovo, senha: senhaNova)
                                nomes.append(nomeNovo)
                                nomeAtual = nomeNovo
                                nomeNovo = ""
                                senhaNova = ""
                                showAlert = false
                            }

                        }.foregroundStyle(.blue)
                    }
                }
                .presentationDetents([.fraction(0.2)])
                .padding()
            }
        }
    }
}

#Preview {
    NavigationBar(userManager: UserManager())
}

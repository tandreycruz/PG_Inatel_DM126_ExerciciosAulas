//
//  NavigationBar.swift
//  App_BemEstar
//
//  Created by user288577 on 11/29/25.
//

import SwiftUI

struct NavigationBar: View {
    let usuarios: [LoginType]
    
    @State private var nomeAtual: String = ""
    @State private var nomes: [String] = []
    @State private var showAlert: Bool = false
    @State private var nomeNovo: String = ""
    
    init(usuarios: [LoginType]) {
        self.usuarios = usuarios
        _nomes = State(initialValue: usuarios.map { $0.username })
        _nomeAtual = State(initialValue: usuarios.first?.username ?? "Usuário")
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
                    Text("Adicionar novo nome").font(.headline)
                    TextField("Digite o nome", text: $nomeNovo).textFieldStyle(RoundedBorderTextFieldStyle())
                    HStack {
                        Button("Cancelar") {
                            showAlert = false
                            nomeNovo = ""
                        }.foregroundStyle(.red)
                        Button("Adicionar") {
                            if !nomeNovo.isEmpty {
                                nomes.append(nomeNovo)
                                nomeAtual = nomeNovo
                                nomeNovo = ""
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
    NavigationBar(usuarios: mockUsers)
}

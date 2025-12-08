//
//  NavigationBar.swift
//  App_BemEstar
//
//  Created by user288577 on 11/29/25.
//

import SwiftUI

struct NavigationBar: View {
    @State private var nomeAtual: String = "Taibe Cruz"
    @State private var nomes: [String] = ["Taibe Cruz", "Jose Cruz", "Ramon Cruz"]
    @State private var showAlert: Bool = false
    @State private var nomeNovo: String = ""
    
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
            
            Button(action: {}){
                Image(systemName: "person.badge.plus.fill")
            }
        }
    }
}

#Preview {
    NavigationBar()
}

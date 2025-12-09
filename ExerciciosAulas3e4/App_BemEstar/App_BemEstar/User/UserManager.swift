//
//  UserManager.swift
//  App_BemEstar
//
//  Created by user288577 on 12/8/25.
//

import Foundation

class UserManager: ObservableObject {
    @Published var usuarios: [LoginType]

    init(usuarios: [LoginType] = mockUsers) {
        self.usuarios = usuarios
    }

    func adicionarUsuario(nome: String, senha: String) {
        let novo = LoginType(username: nome, password: senha)
        usuarios.append(novo)
    }    
}

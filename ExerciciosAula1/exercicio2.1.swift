//2.1) Crie um programa que leia a idade do usuário e informe se ele pertence a uma das categorias

//- 0 a 13, criança
//- 13 a 18, adolescente
//- 18 em diante, adulto

let idadeUsuario = Int(readLine()!)!

switch idadeUsuario {
    case 0...12: print("Criança")
    case 13...17: print("Adolescente")
    case _ where (idadeUsuario >= 18): print("Adulto")
    default: print ("Idade inválida!")
}


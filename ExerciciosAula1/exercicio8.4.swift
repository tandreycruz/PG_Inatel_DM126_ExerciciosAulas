//8.4) Crie uma classe empregado que possuirá os seguintes atributos:
// Nome (String)
// Salário (Double)

// Cire uma classe filha de empregado, a Gerente. Afinal de contas, gerente é um tipo de empregado.
// Na classe "Gerente", adicione como atributo "departamento", que deve ser uma string que diga a qual departamento o gerente pertence.
// Lembre de usar o super.init() para inicializar os atributos da classe pai.

class Empregado
{
    var nome: String
    var salario: Double
    
    init(nome: String, salario: Double)
    {
        self.nome = nome
        self.salario = salario
    }
}

class Gerente : Empregado
{
    var departamento: String
    
    init(nome: String, salario: Double, departamento: String)
    {
        self.departamento = departamento
        super.init(nome: nome, salario: salario)
    }
}

var empregado = Empregado(nome: "Taibe", salario: 1200.00)
var gerente = Gerente(nome: "Rose", salario: 5000.00, departamento: "GESA")

print("Empregado: \(empregado.nome) | Salário: \(empregado.salario)")
print("Gerente: \(gerente.nome) | Departamento: \(gerente.departamento) | Salário: \(gerente.salario)")
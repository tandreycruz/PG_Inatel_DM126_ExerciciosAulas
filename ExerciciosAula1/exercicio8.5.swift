//8.5) Com base no desafio anterior, crie uma outra classe filha chamada Vendedor.
// Faça um método chamado percentualComissao, que recebe como parâmetro o número de vendas que o vendedor realizou.
// Cada vendedor possui uma comissão de 10% sobre cada venda.
// Essa comissão é adicionada ao salário final.
// Retorne o valor final que o vendedor irá receber, supondo que cada venda possui um valor de R$50,00.


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

class Vendedor : Empregado
{
    var nroVendas: Int
    
    init(nome: String, salario: Double, nroVendas: Int)
    {
        self.nroVendas = nroVendas
        super.init(nome: nome, salario: salario)
    }
    
    func percentualComissao() -> Double
    {
        return Double((self.nroVendas * 50) / 10)
    }
}

var vendedor = Vendedor(nome: "Carlos", salario: 1000.00, nroVendas: 34)
var comissao = vendedor.percentualComissao()
var salarioFinal = vendedor.salario + comissao

print("Vendedor: \(vendedor.nome)")
print("Salário Base: \(vendedor.salario)")
print("Comissão: \(comissao)")
print("Salário Final: \(salarioFinal)")
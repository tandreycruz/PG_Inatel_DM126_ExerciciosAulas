//8.2) Crie uma classe/struct chamada "Restaurante" que tenha os seguintes atributos:
//- Nome;
//- Tipo de comida;
//- Número de pedidos (esse sempre será inicializado como 0 no construtor).

// E então implemente o seguinte método:
//- recebePedido() -> esse método acrescenta em 1 o valor do atributo referente ao número de pedidos;
//- calculaTotalPedidos() -> supondo que cada pedido tenha um valor fixo de R$35,00, crie um método que calcule e retorne o valor total em pedidos.


class Restaurante
{
    var nome: String
    var tipoComida: String
    var nroPedidos: Int
    
    init(_ nome: String, _ tipoComida: String)
    {
        self.nome = nome
        self.tipoComida = tipoComida
        self.nroPedidos = 0
    }
    
    func recebePedido()
    {
        self.nroPedidos = self.nroPedidos + 1
    }
    
    func calculaTotalPedidos() -> Double
    {
        return Double(self.nroPedidos) * 35.00
    }
}

var restaurante = Restaurante("Fundo de Quintal", "Regional Paraense")

for _ in 1...10
{
    restaurante.recebePedido()
}

print("Restaurante: \(restaurante.nome)")
print("Tipo de Comida: \(restaurante.tipoComida)")
print("Qtde. Total Pedidos: \(restaurante.nroPedidos)")
print("Valor Unitário Pedido (R$): 35.00")
print("Valor Total Pedidos (R$): \(restaurante.calculaTotalPedidos())")
//8.1) Crie uma classe/struct (a seu critério) chamada "Calculadora" que possua dois diferentes números como atributos.
// Esses números podem ser inteiros ou decimais, à sua escolha, e precisam ser inicializados pelo construtor de acordo com o que foi recebido por parâmetro;
// Produza 4 métodos referentes às operações básicas de cálculo: soma, subtração, divisão e multiplicação;
// Esses métodos não recebem parâmetros, mas eles retornam um valor do tipo inteiro ou decimal (à sua escolha). Os métodos agem em cima das propriedades citadas anteriormente;
// Instancie essa classe/struct com os dois valores em questão e chame todos os métodos citados.


struct Calculadora
{
    var numero1: Int
    var numero2: Int
        
    init(_ numero1: Int, _ numero2: Int)
    {
        self.numero1 = numero1
        self.numero2 = numero2
    }
    
    func soma() -> Int
    {
        return self.numero1 + self.numero2
    }
    
    func subtrai() -> Int
    {
        return self.numero1 - self.numero2
    }
    
    func multiplica() -> Int
    {
        return self.numero1 * self.numero2
    }
    
    func divide() -> Int
    {
        return self.numero1 / self.numero2
    }
}

var calculadora = Calculadora(12, 2)
print(calculadora.soma())
print(calculadora.subtrai())
print(calculadora.multiplica())
print(calculadora.divide())